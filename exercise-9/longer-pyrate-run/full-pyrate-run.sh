#! /bin/bash

cd ~/Desktop/eeb-177/lab-work/exercise-9

wget -O canid_occ.csv "$link"

Rscript process_canid_data.R

python ~/PyRate/PyRate.py canid_occ_PyRate.py -data_info > data_summary.txt

python ~/PyRate/PyRate.py Canis_raw_PyRate.py -n $length
