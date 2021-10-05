# Resource file organization

This is an initial proposal for organising resource files on a file system. 

Challenges:

- very high number of primary documents (full texts, bibliographical records) and secondary documents produced by our pipeline (annotations, extractions, etc.): Unpaywall alone corresponds to a volume of 20M full texts, to be complemented by 80+ million additional bibliographical records and json documents/objects. 

- no natural naming: DOI for instance is relevant only to a subset of the collections

- requirement for persistent identifiers (in the case of incremental harvesting)

- requirement to manage deployments on cloud (Swift, S3), without too many objects per directory for scalability/performance reasons

- keep it stupid and simple, but not too stupid and too simple

Note: In the past we experimented with MongoDB (GridFS) to store a large volume of documents and annotations in the context of text mining of scientific publications. It turned out to be more a source of problems and burdens (managing MongoDB versions, apocalyptic migrations, failures, etc.), without providing any advantages with respect to a modern file system (which can handle huge number of files and compression very easily).

The following proposal is based on a solution developed initially with ISTEX, and further implemented by [biblio-glutton-harvester](https://github.com/kermitt2/biblio-glutton-harvester) and [article-dataset-builder](https://github.com/kermitt2/article-dataset-builder). It was used to manage more 15M primary documents and more than 60M additional annotation/extraction/thumbnail files with success on local storage and S3. 

## File system

Harvesting of full texts will result in files, mostly PDF, associated to metadata. While DOI might cover a very large part of these scholar documents, important subsets have no DOI (around 9M PubMed documents, thesis, pre-print like HAL or arXiv, books, some conference proceedings, etc.). There is therefore no unique identifier and natural naming for the full texts.

[UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) can be used to identify a full text and the path to the full text and its secondary resources, avoiding any risks of collision. UUID is supported by many libraries in a variety of languages.   

Using a prefix path based on the first 8 hexadecimal characters of the UUID allows to balance the total files in 4M final directories, ensuring a number of directories at each node lower than 256 for up to 1 billion full texts. 

Structure of the generated path for an article having as UUID identifier `98da17ff-bf7e-4d43-bdf2-4d8d831481e5`

```
98/da/17/ff/98da17ff-bf7e-4d43-bdf2-4d8d831481e5/98da17ff-bf7e-4d43-bdf2-4d8d831481e5.pdf
98/da/17/ff/98da17ff-bf7e-4d43-bdf2-4d8d831481e5/98da17ff-bf7e-4d43-bdf2-4d8d831481e5.nxml
```

File extension immedialy after the UUID in the file name is a primary file format of the full text, e.g. `.pdf`, `.xml`, `.nxml`, `.html`, `.docx`, etc. (the `*.nxml` files correspond to the JATS files available with PMC).

## Secondary resources

Secondary files have prefix indicating the nature of the extraction, annotation or more generally enrichment they provide. For instance, [article-dataset-builder](https://github.com/kermitt2/article-dataset-builder) is producing the following additional files when building a corpus of harvested and enriched scholar documents:

```
98/da/17/ff/98da17ff-bf7e-4d43-bdf2-4d8d831481e5/98da17ff-bf7e-4d43-bdf2-4d8d831481e5.grobid.tei.xml
98/da/17/ff/98da17ff-bf7e-4d43-bdf2-4d8d831481e5/98da17ff-bf7e-4d43-bdf2-4d8d831481e5.pub2tei.tei.xml
98/da/17/ff/98da17ff-bf7e-4d43-bdf2-4d8d831481e5/98da17ff-bf7e-4d43-bdf2-4d8d831481e5-ref-annotations.json
98/da/17/ff/98da17ff-bf7e-4d43-bdf2-4d8d831481e5/98da17ff-bf7e-4d43-bdf2-4d8d831481e5-thumb-small.png
98/da/17/ff/98da17ff-bf7e-4d43-bdf2-4d8d831481e5/98da17ff-bf7e-4d43-bdf2-4d8d831481e5-thumb-medium.png
98/da/17/ff/98da17ff-bf7e-4d43-bdf2-4d8d831481e5/98da17ff-bf7e-4d43-bdf2-4d8d831481e5-thumb-large.png
```

We need to adopt a naming convention for the type of enrichment necessary to the project, for instance: 

- `*.software.json`: software mention annotations produced by the software mention recognizer
- `*.dataset.json`: named dataset mention annotations produced by the dataset mention recognizer
- `*.references.tei.xml`: the "resolved" bibliographical references (i.e. matched against Crossref, PubMed, etc.)
- `*.affiliations.json`: the "resolved" affiliations (i.e. matched against ROR, etc.)
- `*.grobid.tei.xml`: the structured full text extracted by Grobid, which contains the "raw" affiliations, references and citation contexts
- `*.pub2tei.tei.xml`: the structured full text converted from the publisher XML into TEI (same TEI format as GROBID),  which contains the "raw" affiliation, references and citation contexts

Non binary files, e.g. `.xml` and `.json`, will be preferably all compressed with `gzip`. 

## Catalogue

Metadata information usually come from authoritative sources, but might be enriched with reliable extraction (for keywords, abstracts, references). 
The metadata have to include the UUID of the full text in order to map strong identifiers like DOI or PMID to the UUID and access the resources ingested and produced for the full text. 

Metadata in the crossref format (for instance as enriched by [biblio-glutton](https://github.com/kermitt2/biblio-glutton) with additional PMID, PMC ID and ISTEX identifiers, and MeSH classes) can be stored alongside the other resources with the following extension:

```
98/da/17/ff/98da17ff-bf7e-4d43-bdf2-4d8d831481e5/98da17ff-bf7e-4d43-bdf2-4d8d831481e5.metadata.json
```

This JSON would contain at the root level an attribute `id` corresponding to the UUID, in addition to other metadata. 

A global catalogue is then maintained as the union of all these metadata JSON objects, allowing to iterate through all the resources according to their UUID and corresponding path. 
