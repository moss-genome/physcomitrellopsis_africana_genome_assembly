#!/bin/bash
#SBATCH --job-name=pilon_pafricana_wengan_assembly
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

java -Xmx180G -jar /isg/shared/apps/pilon/1.24/pilon-1.24.jar --genome /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_wengan_assembly/wengan_assembly_run1/pafricana_asm_wengan.SPolished.asm.wengan.fasta --bam /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pilon/sorted_pafricana_wengan_assembly_DP8400020490TR_L01_28.sam.bam --bam /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pilon/sorted_pafricana_wengan_assembly_DP8400020490TR_L01_117.sam.bam --output pafricana_wengan_assembly --outdir pilon_pafricana_wengan_assembly --changes --tracks

