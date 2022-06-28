#!/bin/bash
#SBATCH --job-name=03b_repeatmodeler
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 30
#SBATCH --partition=xeon
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH --mem=96G
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

module load RepeatModeler/2.01
RepeatModeler -pa 30 -database purgehap_run9_pilon_masurca_curated_db -LTRStruct 

date

