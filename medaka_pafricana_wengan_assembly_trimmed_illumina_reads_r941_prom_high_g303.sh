#!/bin/bash
#SBATCH --job-name=medaka_pafricana_wengan_assembly_trimmed_illumina_reads_r941_prom_high_g303
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

module load medaka/1.3.2
#module load python/3.6.3
#module unload tabix/0.2.6
#module load zlib/1.2.11
#module load bcftools/1.9

medaka_consensus -i /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_wengan_assembly/physcomitrellopsis_africana_promethion_fastq_reads-pass_rmv_contam.fastq.gz -d /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_wengan_assembly/wengan_assembly_run2/pafricana_asm_wengan.SPolished.asm.wengan.fasta -o medaka_pafricana_wengan_assembly_trimmed_illumina_reads_r941_prom_high_g303 -t 40 -m r941_prom_high_g303
