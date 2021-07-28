#!/bin/bash
#SBATCH --job-name=fastq_trimming_pafricana_illumina
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 1
#SBATCH --mem=185G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

echo `hostname`
################################################################# # Trimming of Reads using Sickle ################################################################# 
module load sickle/1.33

sickle pe -f DP8400020490TR_L01_28_1.fq.gz -r DP8400020490TR_L01_28_2.fq.gz -t sanger -o trimmed_DP8400020490TR_L01_28_1.fq -p trimmed_DP8400020490TR_L01_28_2.fq -s trimmed_singles_DP8400020490TR_L01_28.fq -q 30 -l 40
sickle pe -f DP8400020490TR_L01_117_1.fq.gz -r DP8400020490TR_L01_117_2.fq.gz -t sanger -o trimmed_DP8400020490TR_L01_117_1.fq -p trimmed_DP8400020490TR_L01_117_2.fq -s trimmed_singles_DP8400020490TR_L01_117.fq -q 30 -l 40

