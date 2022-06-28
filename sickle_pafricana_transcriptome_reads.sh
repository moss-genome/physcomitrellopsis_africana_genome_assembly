#!/bin/bash
#SBATCH --job-name=sickle_trimming
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 16
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH --mem=20G
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date


module load sickle/1.33

sickle pe \
        -t sanger \
        -f /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_transcriptome/Reads/CL100118899_L01_573_1.fq -r /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_transcriptome/Reads/CL100118899_L01_573_2.fq \
        -o trimmed_CL100118899_L01_573_1.fastq -p trimmed_CL100118899_L01_573_2.fastq -s trimmed_singles_CL100118899_L01_573.fastq \
        -q 30 -l 50
