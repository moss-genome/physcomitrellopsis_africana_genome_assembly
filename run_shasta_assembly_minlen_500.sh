#!/bin/bash
#SBATCH --job-name=shasta_assembly_pafricana_test_run_minlen_500
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

shasta --input 5074_test_LSK109_30JAN19-reads-pass.fasta --Reads.minReadLength 500 --memoryMode anonymous --memoryBacking 4K --threads 64
