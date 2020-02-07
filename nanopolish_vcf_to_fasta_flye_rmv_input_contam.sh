#!/bin/bash
#SBATCH --job-name=nanopolish_vcf2fasta_pafricana_flye_rmv_contam
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=100G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load nanopolish/0.11.1
module load python/3.6.3
module load biopython/1.70

nanopolish vcf2fasta --skip-checks -g /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/flye_assembly_rmv_contam/assembly.fasta -f nanopolish_contig_vcf_names.fofn > polished_pafricana_flye_assembly_rmv_contam.fasta


