#! /bin/bash

cd ~/Desktop/eeb-177/lab-work/exercise-9

wget -O canid_occ.csv "https://paleobiodb.org/data1.2/occs/list.csv base_name=Canidae&show=acconly"

Rscript process_canid_data.R

python ~/PyRate/PyRate.py canid_occ_PyRate.py -data_info > data_summary.txt

python ~/PyRate/PyRate.py Canis_raw_PyRate.py -n 500000
