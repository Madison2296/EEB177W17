---
title: "formatting for pyrate"
author: "Madison Downing"
date: "March 15, 2017"
output: html_document
---

```{r}
source("~/PyRate/pyrate_utilities.r")

# we need to give the utilities a list of extant species
extant_dogs = c("Canis rufus","Canis lupus","Canis aureus","Canis latrans","Canis mesomelas","Canis anthus","Pseudalopex gymnocercus","Canis adustus","Canis familiaris")

# use the extract.ages.pbdb() function in pyrate_utilities to reformat our dataset...
extract.ages.pbdb(file= "canid_occ.csv",extant_species=extant_dogs)

```
