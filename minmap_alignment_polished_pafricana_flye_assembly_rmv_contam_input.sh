#!/bin/bash
#SBATCH --job-name=minimap2_alignment_physcomitrellopsis_africana_polished_flye_assembly_rmv_input_contam
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 16
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mem=125G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load minimap2/2.15
module load samtools/1.7

minimap2 -ax map-ont -t 16 /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/polished_pafricana_flye_assembly_rmv_contam.fasta /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/filter_contaminated_raw_promethion_reads/physcomitrellopsis_africana_promethion_fastq_reads-pass_rmv_contam.fastq | samtools sort -o physcomitrellopsis_africana_polished_flye_assembly_rmv_input_contam.reads.sorted.bam -T reads.tmp

samtools index physcomitrellopsis_africana_polished_flye_assembly_rmv_input_contam.reads.sorted.bam

