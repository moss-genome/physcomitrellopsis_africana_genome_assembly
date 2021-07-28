#!/bin/bash
#SBATCH --job-name=bowtie2_align_pafricana_wengan_assembly_trimmed_illumina_reads
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 40
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=16G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load bowtie2/2.3.5.1

bowtie2 -p 40 -x pafricana_wengan_assembly_trimmed_illumina_reads_idx -1 /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_haslr_assembly/trimmed_DP8400020490TR_L01_28_1.fq.gz -2 /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_haslr_assembly/trimmed_DP8400020490TR_L01_28_2.fq.gz -S pafricana_wengan_assembly_trimmed_illumina_reads_trimmed_DP8400020490TR_L01_28.sam
bowtie2 -p 40 -x pafricana_wengan_assembly_trimmed_illumina_reads_idx -1 /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_haslr_assembly/trimmed_DP8400020490TR_L01_117_1.fq.gz -2 /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_haslr_assembly/trimmed_DP8400020490TR_L01_117_2.fq.gz -S pafricana_wengan_assembly_trimmed_illumina_reads_trimmed_DP8400020490TR_L01_117.sam

