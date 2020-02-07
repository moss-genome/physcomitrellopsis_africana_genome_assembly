#!/bin/bash
#SBATCH --job-name=minimap2_alignment_pafricana_flye_rmv_contam
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 8
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=END
#SBATCH --mem=250G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load minimap2/2.15
module load samtools/1.7

minimap2 -ax map-ont -t 8 /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/flye_assembly_rmv_contam/assembly.fasta /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/filter_contaminated_raw_promethion_reads/physcomitrellopsis_africana_promethion_fastq_reads-pass_rmv_contam.fastq | samtools sort -o pafricana_flye_rmv_contam_assembly_reads.sorted.bam -T reads.tmp

samtools index pafricana_flye_rmv_contam_assembly_reads.sorted.bam


