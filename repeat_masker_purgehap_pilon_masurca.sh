#!/bin/bash
#SBATCH --job-name=04_repeatmasker
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 16
#SBATCH --partition=xeon
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH --mem=64G
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

module load RepeatMasker/4.0.9-p2 

RepeatMasker -pa 16 -lib ../repeat_modeler/RM_2109530.SatJun250415192022/consensi.fa -gff -a -noisy -xsmall /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_haplotigs/purge_haps_pilon_masurca/purgehap_run9/curated.fasta
date
