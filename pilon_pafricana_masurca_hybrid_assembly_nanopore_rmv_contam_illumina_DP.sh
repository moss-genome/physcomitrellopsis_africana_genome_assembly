#!/bin/bash
#SBATCH --job-name=pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mem=185G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load pilon/1.24

java -Xmx180G -jar /isg/shared/apps/pilon/1.24/pilon-1.24.jar --genome /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/masurca/pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina/CA.mr.41.17.15.0.02/primary.genome.scf.fasta --bam /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pilon/sorted_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP8400020490TR_L01_28.sam.bam --bam /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pilon/sorted_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP8400020490TR_L01_117.sam.bam --output pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP --outdir pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP --changes --tracks


