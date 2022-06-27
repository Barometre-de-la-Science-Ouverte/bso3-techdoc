# Discussion on software and dataset scope and sharing

## Objective

1) Define what should be considered as a "software" object in the scopre of the BSO

2) Define what should be considered as a "dataset" object in the scopre of the BSO

3) what are the minimal criteria for considering that a software or a dataset is shared ?

## 1) Software

From the point of view of software sharing, a "research software" is usually a software produced by researchers or by research software engineers. 

From the point of view of software citation, a "research software" is a software mentioned in scholar literature - this is a "software of interest" for research. This could cover also general purposes and mainstream software such as Excel, Photoshop or PostgresSQL. 

Software correspond in practice to various artefacts, which are not always obvious to consider as "software". This is particularly challenging from the point of view of software citation, but this remains an issue even when identifying software sharing. 

A standard definition of software is "a collection of computer programs that provides the instructions for telling a computer what to do and how to do it" (Wikipedia). Everything that can provide processing instructions to a computer, whatever its form, can be seen as a software.

The types/formats of software depend a lot on the technical domain and the used programing framework. 

- **Software** typically can be published as standalone applications or libraries/plugins, either as executable code (binaries), package (e.g. R package, combining script and binaries), as a more comprehensive open source project (program, script, resources, document, build scripts, etc.), script to be exectuted within a particular software environment, source code that require manual building, small standalone script (e.g. "gist"), plaform (data, data management software and service software), web services, images to be executed as containers, or software embedded in an hardware device.

- The notion of **models** (machine learning models, simulation models) versus software is unclear. Models encode data processing and executable action/prediction process. They are however in a format closer to data, because the "instructions" are only digital transformations. Models themselves should be run in a software environment. Despite their "executable" nature, models are usually not considered as software. 

- **Algorithm** versus software: it is quite frequent that the name of an algorithm and its implementation (so as software) are used in papers in an interchangeable manner. While it is clear that we want to exclude "algorithm names" from software entities, they can be used to refer to the implementation. This is one of the most frequent ambiguity we have identified in Softcite and this was similarly reported by [3]. The distinction could sometime be done in context, but a guideline is necessary when the usage of the name is general and ambiguous on purpose. 

Examples: 

[10.1038/ng.2007.13](https://pubmed.ncbi.nlm.nih.gov/17952075/)

    Finally, we applied the EIGENSTRAT method [46], which relies on patterns of correlation 
    between individuals to detect stratification, to our Icelandic discovery sample. 

*EIGENSTRAT* here is the name of the method and of the software implementing the method.

[10.1038/bjc.2016.25](https://www.nature.com/articles/bjc201625)

    Messenger RNA expression was normalised to household gene expression (GAPDH and RPL13A 
    for BON-1; HPRT and YWAZ for QGP-1) according to the geNorm algorithm (Mestdagh et 
    al, 2009). 

*geNorm* is an algorithm and referenced as such above, but it is a software too - and the software is actually used for the normalization in the described research.


- **Database** versus software: in scientific publications, it is quite frequent to mention a database name as a general service covering the data and the software to access/search the data (including web services and database management software, e.g. PostgresSQL). 

* PMC4863732

    PubMed MEDLINE

MEDLINE is at the same time a large metadata collection and a database service to query this catalogue. 

* 10.1002/pam.22030

    Data come from the Integrated Public Use Microdata Series (IPUMS) database

Integrated Public Use Microdata Series (IPUMS) is a database and an online platform.

The related guideline for the Softcite corpus [1] was as follow: 

    "The relevant distinction should be whether the text is referring to a data collection/dataset 
    (ie the data in the database) or to the software that provides access to a dataset. If it is 
    clear that they are referring to the data inside, it is not a reference to a software." 

The guideline thus also means that when it is not clear that we refer to the data inside the database, it should be considered as software too. 

- Very common is life science, **scientific devices** are used in most of the experiments. They usually includes software, embedded or to be install on a PC to control the device, process the aquired data, export the data, etc.. 

Example:

[PMC4644012](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4644012/)

    The Gram-negative coccobacilli were initially identified as Pasturella pneumotropica by the 
    VITEK 2 system, software version 06.01 (BioMerieux, France) using the GN card, with bionumber 
    0001010210040001 and an excellent identification (probability 99%).

The [VITEK 2 system](https://www.biomerieux-usa.com/clinical/vitek-2-healthcare) embeds software performing predictions. 

Given the variety of software embodiments, what is mentioned is often larger system or devices including software. It is thus important to decide in context to which part the authors are referring to, and if the statement refers to the software part of the device. 

This is however less an issue for software sharing (the software here is part of a commercial product, not really produced by researchers and described in a research publication), and it is more relevant to research software citation. 
 
- **software components** of a more complete infrastructure: A reference is made to a general infrastructure, including some software components. For example in [10.20955/r.2018.1-16](http://herosolutions.com.pk/breera/foundation/images/whitepaper.pdf) "Bitcoin wallet". 

- Reference to a **programing languages**. For example:

[10.1257/jep.4.1.99](https://www.aeaweb.org/articles?id=10.1257/jep.4.1.99)

    It is written in BASIC, a close analogue to FORTRAN.

Software language per se (written in BASIC, in FORTRAN, ...) are normally not software, but software tools for a software language (like a C compiler, a Java virtual machine, a Integrated Development Environment like R-Studio, etc.) are. 

- Non-named usage of a programming environment. Software was produced on the environment (some code was written), but it is implicit, not shared, not reusable. 

Example:

[10.1136/gut.2011.238386](https://gut.bmj.com/content/gutjnl/61/1/69.full.pdf)

    Multiple imputation was conducted in R 2.11." 

- When defining the scope of software, [2] introduces the following exclusions:

    We explicitly exclude database record numbers/identifiers (e.g., GO:0002474, Q8HWB0), file 
    formats (e.g., PDF), programming languages and their libraries (e.g., Python, BioPython), 
    operating systems (e.g., Linux), algorithms (e.g., Merge-Sort), methods (e.g., ANOVA, 
    Random Forests) and approaches (e.g., Machine Learning, Dynamic Programming)." 

[3] distinguishes 4 subtypes of software:

- Application, a standalone program, designed for end-users
(include web-based applications such as web-services).

- Plugin is an extension to a software that cannot be used in-
dividually (include libraries/R packages).

- Operating System (OS) 

- Programming Environment (includes compilers or interpreters)

When used together with a specific software mention, OS and programing environments can be considered as "attributes" of this software (e.g. running on Windows, developed with R-Studio). However, OS and programing environments can also be referenced as such. 


## 2) Dataset

Actual dataset mentions also present some heterogeneity, as observed for software, although we think in a less important manner. With variation of types, formats and access, the scope for "datasets" is not always clear. As far as we know, this is however not discussed in the literature. 

- **implicit versus named datasets**: most mention of set of data are implicit. The research study can mention some data acquisition, but the dataset is not named, nor shared. Most of the data discussed in papers in the biomedical field for instance are created for the study, but remain implicit and not shared. 

For example:

[10.1038/srep14168](https://www.nature.com/articles/srep14168)

    The 47 tilapia DNA samples were sent to Beijing Genome Institute (BGI) for 101 bp paired-end sequencing using Illumina Hiseq 2500. 

The Illumina Hiseq 2500 device produces sequencing data, which are part of the described study. These data are however not named and not shared. 

- mentioning a **database** rather than independent dataset: The main point here is usually if the research work refers to the data/dataset stored in the database or if some data has been loaded and shared via this database.

[2] for instance define a database as "any electronic resource that stores records in a structured form, and provides unique identifiers to each record". 
This is however identical to what is usually understood as a "dataset". In case of the database, a software service layer is implied in the data delivery, in addition to a data storage which is binded to this software service. 

On the other hand, a "dataset" typically exists independently from a database management system and is not ambiguous. 

- Reference not with a dataset name, but to a **data sharing initiative/project**, which purpose is a collection of datasets. For example:

For example the Coleridge Kaggle dataset (which is a particularly "noisy", imprecise and incomplete annotated corpus) is annotating the Alzheimer's Disease Neuroimaging Initiative (ADNI) as a dataset name: 

    Genome-wide pathway analysis of memory impairment in the Alzheimer’s Disease Neuroimaging Initiative (ADNI) cohort implicates gene candidates, canonical pathways, and networks.

This is however not a standard dataset citation, although the location of some data used in the research work is supported. 

- Reference to an **entry in a database**, for instance via a unique identifier such as an accession number. The dataset here is defined by the combination of the data service and the identifier. 

For example: 

https://doi.org/10.1371/journal.pone.0204936

    The mutations in selected resistance genes (gyrA, gryB, parC, parE, mexR, ampC, ampD and 
    ampR) of each strain were determined with reference to P. aeruginosa PAO1 (Genbank RefSeq 
    accession no. NC_002516.2).

- Primary versus secondary data

- Reference to a large project/collaboration, for actually referencing data produced/shared by the collaboration and not the collaboration itself. 
 

## 3) Sharing

The form of sharing statements, the nature of the shared data/software and the proportion of shared data can vary significantly. Examining the publications in a bottom-up approach shows that data sharing is not a dichotomy (shared/not shared), but rather shades of grey, which makes complicated to decide which criteria and sharing "threshold" should be considered. 

- sharing statement corresponding to **no actual public data sharing**: "data available on reasonable demand"

- sharing statement on **secured domain**: the data is shared but not available without some authorization and credentials validation process

- **partial sharing**: only some data of the study are shared, this is the most common case of data sharing
    * sharing of secondary/analysis data, but not of primary data (e.g. sharing of the data ploints of figures)
    * cherry pick-up data sharing: "relevant" data
    * patial data sharing without further discussion

- **insufficient or invalid data sharing**: 

    * case of partial reuse of a dataset/database, the authors cite properly the shared dataset where a selection of data is made, but does not disclosed/share openly which subset is used for experiements
    * "data are available in article and/or supplementary data", which means that the figures/tables are supposed to disclose the data. However, what is disclosed is a visualization or sumary of the data, not in exploitable format for computers, and not the actual and usable primary data.
    * sharing is stated with some public URI, but the links are invalid/outdated

The usage of data sharing statements (as an independent section at the end of an article) is limited to certain technical domains and journals, mainly bio-medicine and natural sciences. Without data sharing statement requirements, the sharing is usually clearer because the authors are not forced by a kind of bureacratic statement requirement which often result in some obfuscation: they disclose the shared datasets and how to access them or they -say nothing about the availability of data. On the other hand, data sharing is then less frequent and requires much more sophisticated text mining process to be captured, with lower recall. 

- In general, we can expect to be able to determine that a certain proportion of research article shares "some" data effectively (not just stating a possibility of request for data or an intend):
    * we cannot judge the comprehensiveness of the shared data
    * we need to identify evidence of actual sharing e.g. url, data repository, permanent identifier to access that some data is shared
    * mention of the usage of some selection of research data available online (e.g. ) is not enough to determine which data is used and is not shared data


## References

[1] https://howisonlab.github.io/softcite-dataset/coding-scheme.html

[2] Duck, G., Kovacevic, A., Robertson, D.L. et al. [Ambiguity and variability of database and software names in bioinformatics](https://jbiomedsem.biomedcentral.com/articles/10.1186/s13326-015-0026-0). J Biomed Semant 6, 29 (2015). https://doi.org/10.1186/s13326-015-0026-0

[3] David Schindler, Felix Bensmann, Stefan Dietze, and Frank Krüger. 2021. [SoMeSci- A 5 Star Open Data Gold Standard Knowledge Graph of Software Mentions in Scientific Articles](https://dl.acm.org/doi/10.1145/3459637.3482017). Proceedings of the 30th ACM International Conference on Information & Knowledge Management. Association for Computing Machinery, New York, NY, USA, 4574–4583. https://doi.org/10.1145/3459637.3482017


