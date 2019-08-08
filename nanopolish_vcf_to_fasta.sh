#!/bin/bash
#SBATCH --job-name=nanopolish_physcomitrellopsis_africana_polished_assembly_vcf_to_fasta
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=150G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load nanopolish/0.11.1
module load python/3.6.3
module load biopython/1.70

nanopolish vcf2fasta --skip-checks -g flye_assembly/assembly.fasta nanopolish_contigs/physcomitrellopsis_africana_assembly_polished.*.vcf > physcomitrellopsis_africana_polished_assembly.fa

