#!/bin/bash
#SBATCH --job-name=minimap2_alignment_physcomitrellopsis_africana_polished_3kb_rmvcontam
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

minimap2 -ax map-ont -t 8 /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/polished_assembly/physcomitrellopsis_africana_polished_3kb_rmvcontam_assembly.fasta /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/5074_test_LSK109_30JAN19-reads/5074_test_LSK109_30JAN19-reads-pass.fastq | samtools sort -o /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/physcomitrellopsis_africana_polished_3kb_rmvcomtam_genome.reads.sorted.bam -T reads.tmp

samtools index /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/physcomitrellopsis_africana_polished_3kb_rmvcomtam_genome.reads.sorted.bam
