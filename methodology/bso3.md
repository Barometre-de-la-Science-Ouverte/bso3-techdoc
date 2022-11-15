---
title: '..'
subtitle: '...'
author:
  - Aricia Bassinet:
      institute: université de lorraine
      orcid: 
      idref: 
  - Laetitia Bracco:
      institute: université de lorraine
      orcid: 0000-0002-2939-9110
      idref: 19945468X
  - Anne L'Hôte:
      institute: mesr
      orcid: 0000-0003-1353-5584
      idref: 258076186
  - Eric Jeangirard:
      institute: mesr
      orcid: 0000-0002-3767-7125
      idref: 242241344
  - Patrice Lopez:
      institute: scienceminer
      orcid: 0000-0002-9959-9441
      idref: 157929930

institute:
  - mesr:
      name: 'French Ministry of Higher Education, Research, Paris, France'
  - université de lorraine:
      name: 'University of Lorraine, France'
  - scienceminer:
      name: 'science-miner, France'
bibliography: bso3.bib
date: December 2022
keywords:
  - research software
  - research data
  - open access
  - open science
  - scientometrics
geometry: "left=3cm, right=3cm, top=3cm, bottom=3cm"
---

**Keywords**: research software, research data, open access, open science, scientometrics

# Abstract

There is today no standard way for referencing research datasets and research software in scientific communication. Emerging editorial workflows and supporting infrastructures dedicated to dataset and software are still very little adhered to publishing practices and are very fragmented.

To better follow the production of research datasets and software, we present a method relying on a text mining process targeting scientific publications at scale, implemented at the French national level to measure the openness of French research data and software.

Our approach relies on state-of-the-art Machine Learning and document engineering developments to ensure satisfactory accuracy across multiple research areas and document types, combining full-text harvesting, mention extraction, context characterization and corpus-level analysis. 

The French Open Science Monitor (BSO) website: [https://frenchopensciencemonitor.esr.gouv.fr](https://frenchopensciencemonitor.esr.gouv.fr) presents ...

The source code and the data of the French Open Science Monitor, as well as all the associated tools and datasets, are available under open licences.

# 1. Introduction

## Motivations

Datasets and software are today a core element of the research activities, whose increasing role is broadly acknowledged []. With the objective of better supporting the reuse and the reproducibility of research results, many initiatives to improve the visibility of research dataset and software took place in the last decade, in particular focusing on improving dataset and software cataloging [] and standards for citation [].
However, the large majority of research data and software creation, usage and sharing information are only available in narative forms in the content of scientific publications...

Among the main reasons, we can mention the lack of incentive for researchers to invest time on work not credited and considered for career and promotion, fragmentation of policies, standards, infrastructures and workflows, and the absence of investment by most of the scientific publishers to implement standard referencing of dataset and software.  
As a way to enforce higer standards of openness and visibility for all research products, national Open Science policies are currently rapidly developing... To measure the effect of these policies and adapt them to maximize their adoption, monitoring tool and dashboards are crucial... 

## The French Open Science Monitor

The French Open Science Monitor, also called BSO for 'Baromètre de la Science Ouverte', is a tool for monitoring and steering the public policy linked to the first French National Plan for Open Science [@mesri_national_2018]. A first version of the tool was launched in 2019 providing measurements of the rate of Open Access publications produced by all public French research entities []. A follow-up second Plan for Open Science [@mesri_2nd_2021] has started to further promote and develop the French open science policy, including a focus on research data and research software. The French Open Science Monitor is updated every year [@bracco_extending_2022], however measurements related to research datasets and software were not covered yet.

The coverage of the French Open Science Monitor to research datasets and software was funded following a call for projects within the framework of the French Recovery Plan. The University of Lorraine has been asked by the Ministry of Higher Education and Research (MESR) to lead this project alongside the MESR's Department of Decision Support Tools and Inria. 

[//]: # The project will be led by a team with varied backgrounds and skills: Laetitia Bracco (University of Lorraine, project leader), Jean-François Lutz (University of Lorraine), Aricia Bassinet (University of Lorraine), Emmanuel Weisenburger (MESR), Eric Jeangirard (MESR), Anne L'Hôte (INRIA), Patrice Lopez (science-miner) and Laurent Romary (Inria). A technical and usage committee, which associates the University of Grenoble-Alpes, Inist-CNRS and the Data College of the Committee for Open Science, will support the project team.

## Challenges

Complementary to the slow adoption of better formal reference workflows, mining dataset and software mentions in scientific publication appeared early as a possible solution to increase at scale the visibility of these new key research products. 

Description of prior works... regular expressions, domain-specific rules, restriction to XML full texts availability. 
Lack of annotated data and reliable evaluations. 
Lack of quality metadata and fragmentation of source code repository. 



# 2. Method

## 2.1 Research software and code

[@du_softcite_2021]


## 2.2 Research data

## 2.3 Matching and aggregation


# 3. Implementation

Architecture diagram

Workflow description 

Infrastructure and runtime indications

# 4. Results


## 4.1 Full text harvesting

## 4.2 Dataset and software mention extractions

## 4.3 Research product deduplication

## 4.4 French Open Science Monitor dashboards



## 5 Limitations and future work

### 5.1 Limitations

### 5.2 Future work 

#### 5.2.1 Domain coverage

#### 5.2.2 Large-scale research entity disambiguation

#### 5.2.3 Local Open Science Monitor



# Data and software availability

The data resulting from this work is publicly available on the French Ministry of Higher Education, Research and Innovation open data portal: 

The source code used for the French Open Science Monitor is available on GitHub, and shared with open source licences.

# Acknowledgements

Thank you to the readers.

# References

