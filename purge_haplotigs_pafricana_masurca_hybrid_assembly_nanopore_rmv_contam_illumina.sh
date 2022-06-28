#!/bin/bash
#SBATCH --job-name=purgehap_pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_run9
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=20G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load bedtools/2.25.0
module load samtools/1.7
module load minimap2/2.17
module load MUMmer/4.0.2
module load perl/5.28.1
module load R/3.6.0

#/isg/shared/apps/purge_haplotigs/1.0/bin/purge_haplotigs readhist -b pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.reads.sorted.bam -g /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pilon/pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina/pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP.fasta

/isg/shared/apps/purge_haplotigs/1.0/bin/purge_haplotigs contigcov -i pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.reads.sorted.bam.gencov -l 0 -m 7 -h 65

/isg/shared/apps/purge_haplotigs/1.0/bin/purge_haplotigs purge -g /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pilon/pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina/pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP.fasta -c coverage_stats.csv -b pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.reads.sorted.bam


