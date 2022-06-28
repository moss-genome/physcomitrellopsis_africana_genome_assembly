#!/bin/bash
#SBATCH --job-name=samtools_convert_index_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP_alignment
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 40
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=185G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load samtools/1.9

samtools view -b -@ 40 pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP8400020490TR_L01_28.sam | samtools sort -o sorted_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP8400020490TR_L01_28.sam.bam -@ 40
samtools view -b -@ 40 pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP8400020490TR_L01_117.sam | samtools sort -o sorted_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP8400020490TR_L01_117.sam.bam -@ 40
samtools index -@ 40 sorted_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP8400020490TR_L01_28.sam.bam
samtools index -@ 40 sorted_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP8400020490TR_L01_117.sam.bam


