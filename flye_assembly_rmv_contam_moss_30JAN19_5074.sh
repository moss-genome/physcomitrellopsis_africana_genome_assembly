#!/bin/bash
#SBATCH --job-name=flye_assembly_pafricana_rmv_contam
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 64
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=250G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load flye/2.5
flye --nano-raw /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/filter_contaminated_raw_promethion_reads/physcomitrellopsis_africana_promethion_fastq_reads-pass_rmv_contam.fastq --genome-size 1g --out-dir flye_assembly_rmv_contam/ --threads 64
