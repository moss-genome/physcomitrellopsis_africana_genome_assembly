#!/bin/bash
#SBATCH --job-name=bowtie2_index_pafricana_wengan_assembly
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 48
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=120G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load bowtie2/2.3.5.1

bowtie2-build --threads 48 /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_wengan_assembly/wengan_assembly_run1/pafricana_asm_wengan.SPolished.asm.wengan.fasta pafricana_wengan_assembly_idx

