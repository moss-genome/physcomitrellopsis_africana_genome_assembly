#!/bin/bash
#SBATCH --job-name=minimap2_align_index_pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 32
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mem=125G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load minimap2/2.22
module load samtools/1.9

minimap2 -ax map-ont -t 32 /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pilon/pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina/pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP.fasta /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_wengan_assembly/physcomitrellopsis_africana_promethion_fastq_reads-pass_rmv_contam.fastq | samtools sort -o pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.reads.sorted.bam -T reads.tmp

samtools index pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.reads.sorted.bam


