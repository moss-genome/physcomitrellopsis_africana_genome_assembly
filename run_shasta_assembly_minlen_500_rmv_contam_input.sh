#!/bin/bash
#SBATCH --job-name=shasta_assembly_pafricana_rmv_contam_minreadlen_500
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 64
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mem=250G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load shasta/0.2.0

shasta --input physcomitrellopsis_africana_promethion_fastq_reads-pass_rmv_contam.fasta --Reads.minReadLength 500 --memoryMode anonymous --memoryBacking 4K --threads 64
