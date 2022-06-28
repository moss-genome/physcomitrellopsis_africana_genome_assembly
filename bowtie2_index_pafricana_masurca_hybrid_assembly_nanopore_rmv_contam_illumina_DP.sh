#!/bin/bash
#SBATCH --job-name=bowtie2_index_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 16
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=16G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load bowtie2/2.3.5.1

bowtie2-build --threads 16 /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/masurca/pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina/CA.mr.41.17.15.0.02/primary.genome.scf.fasta pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP_idx

