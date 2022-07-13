# Discussion on software and dataset scope and sharing

## Objectives

1) Define what should be considered as a "software" object in the scope of the French Open Science Monitor (Baromètre de la Science Ouverte, BSO)

2) Define what should be considered as a "dataset" object in the scope of the BSO

3) What are the minimal criteria for considering that a software or a dataset is shared ?

## 1) Software

From the point of view of software sharing, "research software" is usually software produced by researchers or by research software engineers. 

From the point of view of software citation, "research software" is software mentioned in scholar literature - this is "software of interest" for research. This could cover also general purposes and mainstream software such as Excel, Photoshop or PostgresSQL. 

Software products correspond in practice to various artefacts, which are not always clear to consider as "software". This is particularly challenging from the point of view of software citation, but this remains an issue even when identifying software sharing. 

A standard definition of software is "a collection of computer programs that provides the instructions for telling a computer what to do and how to do it" (Wikipedia). Everything that can provide processing instructions to a computer, whatever its form, can therefore be seen as software. This relatively broad definition of software covers a large variety of software products, for instance from macro and formula part of an Excel sheet to large software project with multiple components, hundred thousand lines of source code and binary packages for a variety of computing environments. 

Any of these software products have a potential research interest, for reuse or reproducibility purposes, and could be therefore valuable to share. Monitoring the openness of software in research supposes to be able to identify any mentions of a software product independently from the scale of the software production and independently from its form. 

The types/formats of software depend a lot on the technical domain and the used programing framework. 

**We propose to cover the notion of software in general independently from any particular distribution forms.** 

- **Software** products typically can be published as standalone applications or libraries/plugins, either as executable code (binaries), package (e.g. R package, combining script and binaries), as a more comprehensive open source project (program, script, data resources, documentation, build scripts, etc.), script program or macro to be interpreted and exectuted within a particular software environment, source code that require manual building, small standalone script (e.g. "gist"), plaform (including data, data management software and service software), web services, images to be executed as containers, or software embedded in an hardware device.

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

*geNorm* is an algorithm and referenced as such above, but it is software too - and the software is actually used for the normalization in the described research.

- The notion of **models** (machine learning models, simulation models) versus software is unclear. Models encode data processing and executable action/prediction process. They are however in a format closer to data, because the "instructions" are only digital transformations. Models themselves should be run in a software environment. Despite their "executable" nature, models are usually not considered as software and have dedicated distinct sharing infrastructure (e.g. the [CoMSES Net](https://www.comses.net)). We propose **not** to consider standalone models as software product. 

However, like algorithms, we observe that it can be relatively frequent (in the machine learning area for example) to use the same name to refer both for a model and a software product for implementing/running a model. For example, `BERT` is a python software project (https://github.com/google-research/bert), a model, a family of models (retrained on different domains), or a ML approach (a Deep Learning architecture and methodology for training it):

[10.48550/arXiv.2103.11943](https://arxiv.org/pdf/2103.11943.pdf)

    The representation of the BERT system allows it to be used as a basis for measuring the 
    similarity of sentences in natural languages

Similarly as for algorithm, we need to identify wheter the mention refers to the model product, the approach/method or the software to decide if the mention shall be considered as software mention or not. In case the reference is made in general to the whole framework, including the software, we would consider it as software mention. 

- **Database** versus software: in scientific publications, it is quite frequent to mention a database name as a general service covering the data and  software to access/search the data (including web services and database management software, e.g. PostgresSQL). 

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

This is however less an issue for software sharing (software here is part of a commercial product, not really produced by researchers and described in a research publication), and it is more relevant to research software citation. 
 
- **Software components** of a more complete infrastructure: A reference is made to a general infrastructure, including some software components. For example in [10.20955/r.2018.1-16](http://herosolutions.com.pk/breera/foundation/images/whitepaper.pdf) "Bitcoin wallet". 

- Reference to a **programming languages**. For example:

[10.1257/jep.4.1.99](https://www.aeaweb.org/articles?id=10.1257/jep.4.1.99)

    It is written in BASIC, a close analogue to FORTRAN.

Software language (written in BASIC, in FORTRAN, ...) are normally not software per se, but software tools for implementing a software language (like a C compiler, a Java virtual machine, an Integrated Development Environment like R-Studio, etc.) are. 

- Non-named usage of a programming environment. Software was produced on the environment (some code was written), but it is implicit, not shared, nor reusable. 

Example:

[10.1136/gut.2011.238386](https://gut.bmj.com/content/gutjnl/61/1/69.full.pdf)

    Multiple imputation was conducted in R 2.11." 

- **Workflow** as high-level specifications: in data-intensive scientific domains, the complexity of data processing has led to the common definiton and usage of workflows associated to a scientific experiments. Examples of such workflow systems are [Galaxy](https://galaxyproject.org) (life science), [Kepler](https://kepler-project.org) (physics and environment sciences), [Apache Taverna](https://incubator.apache.org/projects/taverna.html) (bioinformatics, astronomy, biodiversity - now retired), or [KNIME](https://www.knime.com). As workflows are formal instructions similar to high level scripting language, interpreted in a computer environment, and actually shared for reproducibility and reuse purposes, we consider them as software product. 

- **API**: An API is an intermediary product between documentation and executable software. It is challenging to decide if an API should be considered as software, because it requires an implementation to be executable. On the other hand, an API corresponds to instructions that can be executed when used on an environment or with other software components implementing the API, like other software depending on other software components. Given that it is the nature of an API to be shared and used for collaborative work in software, we consider API product as software too. 

**Difference with Duck and al. annotated corpus [2] and SoMeSci corpus [3]**

In addition to the exclusions we discussed above (mentions to algorithm independently from its implementation, mentions to database when referring to the stored data, and programing language when indicating in which language some software is written), we consider the following clarifications with respect to the main existing software annotation efforts (in addition to Softcite [9], from which this work is derived): 

When defining the scope of software, [2] introduces the following exclusions:

```
    We explicitly exclude database record numbers/identifiers (e.g., GO:0002474, Q8HWB0), file 
    formats (e.g., PDF), programming languages and their libraries (e.g., Python, BioPython), 
    operating systems (e.g., Linux), algorithms (e.g., Merge-Sort), methods (e.g., ANOVA, 
    Random Forests) and approaches (e.g., Machine Learning, Dynamic Programming)." 
```

We follow the same exclusions regarding data formats and identifiers, but we further acknowledge and consider that mentions to algorithms can also refer (on purposes) to software implementing the algorithm. In addition, we consider programming language tools/libraries as software per se. Programming languages (the general concept of "language") and operating systems (when introduced as system to run software) are considered attribute characterizing a software product. 

[3] distinguishes 4 subtypes of software:

```
    - Application, a standalone program, designed for end-users
    (include web-based applications such as web-services).

    - Plugin is an extension to a software that cannot be used in-
    dividually (include libraries/R packages).

    - Operating System (OS) 

    - Programming Environment (includes compilers or interpreters)
```

We consider and annotate mentions to application and plugin as standard software mention too. Relatively to OS and programing environment, when used together with a specific software mention, OS and programing environments are considered as "attributes" of this software (e.g. running on Windows, developed with R-Studio). However, OS and programing environments can also be referenced as such when the mention refer specifically to the OS implementation or programming language tools/libraries and not to some software using them. 


## 2) Dataset

Actual dataset mentions also present some heterogeneity, as observed for software, although we think in a less important manner. With variation of types, formats and access, the scope for "datasets" is not always clear. As far as we know, this is however not discussed in the literature. 

- **Implicit versus named datasets**: most mention of sets of data are implicit. The research study can mention some data acquisition, but the dataset is not named, nor shared. Most of the data discussed in papers in the biomedical field for instance are created for the study, but remain implicit and not shared. 

For example:

[10.1038/srep14168](https://www.nature.com/articles/srep14168)

    The 47 tilapia DNA samples were sent to Beijing Genome Institute (BGI) for 101 bp 
    paired-end sequencing using Illumina Hiseq 2500. 

The Illumina Hiseq 2500 device produces sequencing data, which are part of the described study. These data are however not named and not shared. 

The occurrence of a data acquisition device is usually a very reliable hint that some research data have been produced and could be shared for reproducibility and reuse reasons. In our dataset recognition approach, we are thus also trying to identify automatically mentions to data acquisition devices. 

Estimating the number of mentions of implicit datasets would be necessary to estimate the proportion of shared data (against all produced data) in a research work. 

- Mentioning a **database** rather than independent dataset: The main point here is usually if the research work refers to the data/dataset stored in the database or if some data has been loaded and shared via this database.

[2] for instance define a database as "any electronic resource that stores records in a structured form, and provides unique identifiers to each record". 
This is however identical to what is usually understood as a "dataset". In the case of the database, a software service layer is implied in the data delivery, in addition to a data storage which is binded to this software service. 

On the other hand, a "dataset" typically exists independently from a database management system and is not ambiguous. 

- Reference made not with a dataset name to a single dataset, but with a **data sharing initiative/project** name used to reference a collection of datasets developed by this initiative/project.

For example the Coleridge Kaggle dataset (which is a particularly "noisy", imprecise and incomplete annotated corpus) is annotating the Alzheimer's Disease Neuroimaging Initiative (ADNI) as a dataset name: 

    Genome-wide pathway analysis of memory impairment in the Alzheimer’s Disease Neuroimaging 
    Initiative (ADNI) cohort implicates gene candidates, canonical pathways, and networks.

This is however not a standard dataset citation. It informs about the origin and location of some data used in the research work, but does not describe precisely which data is considered. 

Very similar, we can see references to a large project/collaboration/experiments (*collaboration* in the sense of HEP or Astronomy, such as ATLAS, CMS, LHCb), for actually referencing data produced/shared by the collaboration and not the collaboration itself. 

- Reference to an **entry in a database**, for instance via a unique identifier such as an accession number. The dataset here is defined by the combination of the data service and the identifier. 

For example: 

https://doi.org/10.1038/nature21374
    
    The RNA-seq data generated in this study have been deposited in DDBJ under accession codes 
    DRA001101 and DRA004790."

https://doi.org/10.1371/journal.pone.0204936

    The mutations in selected resistance genes (gyrA, gryB, parC, parE, mexR, ampC, ampD and 
    ampR) of each strain were determined with reference to P. aeruginosa PAO1 (Genbank RefSeq 
    accession no. NC_002516.2).

- **Primary versus secondary data**: It is normally expected that the raw primary data are shared (e.g. sequence data, MR images, etc.) and it appears usually the case from the existing manually labeled corpus. 

As example for primary data:

https://doi.org/10.1016/j.ijmm.2016.03.004

    anonymized sequence data can be accessed online under the accession number 
    PRJEB12853 at the European Nucleotide Archive.

However, sometimes only secondary data (analysis of raw data, summary of raw data, etc.) are shared. The sharing could be limited to the values of a figure or table that underline characteristics of raw data. 

Similarly the sharing of data can be limited to the reference of figures or tables in the article (which is a human presentation of a summary of some researchdata), for example:

[PMC6956868](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6956868/)

    The data supporting this article are available in Figures 1–12. 


## 3) Sharing

The form of sharing statements, the nature of the shared data/software and the proportion of shared data can vary significantly. Examining the publications in a bottom-up approach shows that data sharing is not a dichotomy (shared/not shared), but rather shades of grey, which makes it complicated to decide which criteria and sharing "threshold" should be considered. 

- Sharing statement corresponding to **no actual public data sharing**: "data available on reasonable demand"

Furthermore, such promise/intent expressions actually indicate that, on the contrary, the data will in general not be shared at all, even on fair demand, see [4] "Among 1792 manuscripts in which DAS indicated that authors are willing to share their data, 1670 (93%) authors either did not respond or declined to share their data with us.". Note that such disappointing data sharing rate was reported in [6], but higher rates after request to share the data were reported in [7] for studies in Psychology. 

- Sharing statement on **secured domain**: the data is shared but not available without some authorization and credentials validation process

- **Partial sharing**: only some data of the study are shared, this is the most common case of data sharing
    * sharing of secondary/analysis data, but not of primary data (e.g. sharing of the data points of figures)
    * cherry pick-up data sharing: "relevant" data
    * partial data sharing without further discussion

- **Insufficient or invalid data sharing**: 

    * case of partial reuse of a dataset/database, the authors cite properly the shared dataset where a selection of data is made, but do not disclose/share openly which subset is used for experiments
    * sharing is stated with some public URI, but the links are invalid/outdated
    * "data are available in article and/or supplementary data", which means that the figures/tables are supposed to disclose the data. However, what is disclosed is a visualization, a summary or a selection of the data, not in an exploitable format for computers, and not the actual and usable primary data.

For example:

https://doi.org/10.1186/s13064-019-0127-z

    All data generated of analyzed during the current study are included in this
    published article.

https://doi.org/10.1371/journal.pone.0210388

    All relevant data are within the manuscript and its Supporting Information files

These vague statements are very common and introduce a major difference between declared and actual sharing of data (e.g. via URL, Datacite PID, accession number, ...). In [5] for instance in relation to clinical trial data: 

    In this cross-sectional study of 487 clinical trials published in JAMA, Lancet, and New England Journal of Medicine, 334 articles (68.6%) declared data sharing. Only 2 (0.6%) individual-participant data sets were actually deidentified and publicly available on a journal website

- The case of software sharing limited to the sharing of the API (probably to be discussed, but only relevant in a limited manner to the fields of computer science and telecommunication).

**Conclusion**

Our goal is to be able to determine that a certain proportion of research articles shares "some" data effectively (not just stating a possibility of request for data or an intend):
    * we cannot judge the comprehensiveness of the shared data ("level of sharing")
    * to assess that some data is shared, we need to identify evidence of actual sharing e.g. url, data repository, permanent identifier 
    * a mention of the usage of some selection of research data available online (e.g. "we used samples from GenBank") is not enough to determine which data is used and is not shared data
    * vague statements like "all relevant data are within the manuscript and its Supporting Information files" (typical PLOS One) or "All relevant data are within the manuscript" very rarely match the usual expected requirements of data sharing

**Note 1:** The usage of "Data Sharing Statements" in an article (as an independent section at the end of an article) is limited to certain technical domains and journals, mainly bio-medicine and natural sciences. Without *Data sharing statement* requirements, the sharing is usually clearer for text mining because the authors are not forced by a kind of bureacratic statement requirement which often result in some obfuscation: they disclose the shared datasets and how to access them or they say nothing about the availability of data. On the other hand, data sharing is then less frequent and requires much more sophisticated text mining process to be captured, with lower recall. 

**Note 2**: The issue of expressing a *Data Sharing Statement* versus actually sharing data was already observed from early data sharing policies. For instance, PLOS requests the authors to include systematically a data availability statement. However, [8] reported that only about 20% of the statements indicate that data are deposited in a repository (which is "strongly recommended" by PLOS data sharing policy). In addition, satisfying the level of sharing required in the PLOS policy, even with data deposit in a repository, was unclear.  


## References

[1] https://howisonlab.github.io/softcite-dataset/coding-scheme.html

[2] Duck, G., Kovacevic, A., Robertson, D.L. et al. [Ambiguity and variability of database and software names in bioinformatics](https://jbiomedsem.biomedcentral.com/articles/10.1186/s13326-015-0026-0). J Biomed Semant 6, 29 (2015). https://doi.org/10.1186/s13326-015-0026-0

[3] David Schindler, Felix Bensmann, Stefan Dietze, and Frank Krüger. 2021. [SoMeSci- A 5 Star Open Data Gold Standard Knowledge Graph of Software Mentions in Scientific Articles](https://dl.acm.org/doi/10.1145/3459637.3482017). Proceedings of the 30th ACM International Conference on Information & Knowledge Management. Association for Computing Machinery, New York, NY, USA, 4574–4583. https://doi.org/10.1145/3459637.3482017

[4] Mirko Gabelica, Ružica Bojčić, Livia Puljak, Many researchers were not compliant with their published data sharing statement: mixed-methods study,
Journal of Clinical Epidemiology, 2022. https://doi.org/10.1016/j.jclinepi.2022.05.019.

[5] Danchev V, Min Y, Borghi J, Baiocchi M, Ioannidis JPA. Evaluation of Data Sharing After Implementation of the International Committee of Medical Journal Editors Data Sharing Statement Requirement. JAMA Netw Open. 2021;4(1):e2033972. doi:10.1001/jamanetworkopen.2020.33972

[6] Rowhani-Farid A, Barnett AG. Has open data arrived at the British Medical Journal (BMJ)? An observational study. BMJ Open 2016;6:e011784. https://doi.org/10.1136/bmjopen-2016-011784

[7] Neve, Judith, and Guillaume Rousselet. "The Evolution of Data Sharing Practices in the Psychological Literature." (2021). https://doi.org/10.31234/osf.io/3xdja

[8] Federer LM, Belter CW, Joubert DJ, Livinski A, Lu Y-L, Snyders LN, et al. (2018) Data sharing in PLOS ONE: An analysis of Data Availability Statements. PLoS ONE 13(5): e0194768. https://doi.org/10.1371/journal.pone.0194768

[9] Du, C, Cohoon, J, Lopez, P, Howison, J. Softcite dataset: A dataset of software mentions in biomedical and economic research publications. J Assoc Inf Sci Technol. 2021; 72: 870– 884. https://doi.org/10.1002/asi.24454
