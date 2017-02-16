#! /bin/bash
replace_newlines.sh eBird_Taxonomy_v2016_9Aug2016.csv
sed 's/,\s/ /g' formatted_eBird_Taxonomy_v2016_9Aug2016.csv > formatted_eBird.csv
species_counter.py reformatted_eBird_data.csv
