#!/bin/bash
#SBATCH --job-name=03_repeat_modeler_db
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH --mem=10G
#SBATCH -o log/%x_%j.out
#SBATCH -e log/%x_%j.err

hostname
date

module load RepeatModeler/2.01
#ln -s /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_haplotigs/purge_haps_pilon_masurca/purgehap_run1/curated.fasta purgehap_run1_pilon_masurca_curated.fasta

#BuildDatabase -name "purgehap_run1_pilon_masurca_curated_db" /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_haplotigs/purge_haps_pilon_masurca/purgehap_run1/curated.fasta
BuildDatabase -name "purgehap_run9_pilon_masurca_curated_db" /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_haplotigs/purge_haps_pilon_masurca/purgehap_run9/curated.fasta
