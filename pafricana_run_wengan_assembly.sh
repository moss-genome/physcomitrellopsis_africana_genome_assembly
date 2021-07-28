#!/bin/bash
#SBATCH --job-name=pafricana_wengan_assembly
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=40
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mem=185G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err


module load wengan/0.2

singularity exec /isg/shared/apps/wengan/0.2/wengan_v0.2.sif perl /wengan/wengan-v0.2-bin-Linux/wengan.pl \
-x ontraw \
-a M \
-s /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_haslr_assembly/DP8400020490TR_L01_28_1.fq.gz,/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_haslr_assembly/DP8400020490TR_L01_28_2.fq.gz,/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_haslr_assembly/DP8400020490TR_L01_117_1.fq.gz,/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_haslr_assembly/DP8400020490TR_L01_117_2.fq.gz \
-l physcomitrellopsis_africana_promethion_fastq_reads-pass_rmv_contam.fastq.gz \
-p pafricana_asm_wengan -t 40 -g 500
