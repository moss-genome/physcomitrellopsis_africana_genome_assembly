#!/bin/bash
#SBATCH --job-name=purgehap_pafricana_polished_flye_assembly_rmv_contam_input_reads_mid_55
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=50G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load bedtools/2.25.0
module load samtools/1.7
module load minimap2/2.17
module load MUMmer/4.0.2
module load perl/5.28.1
module load R/3.6.0

# /isg/shared/apps/purge_haplotigs/1.0/bin/purge_haplotigs readhist -b /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/read_to_assembly_alignment/physcomitrellopsis_africana_polished_flye_assembly_rmv_input_contam.reads.sorted.bam -g /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/polished_pafricana_flye_assembly_rmv_contam.fasta -t 25

# /isg/shared/apps/purge_haplotigs/1.0/bin/purge_haplotigs contigcov -i physcomitrellopsis_africana_polished_flye_assembly_rmv_input_contam.reads.sorted.bam.gencov -l 5 -m 55 -h 190

/isg/shared/apps/purge_haplotigs/1.0/bin/purge_haplotigs purge -g /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/polished_pafricana_flye_assembly_rmv_contam.fasta -c coverage_stats.csv -b /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/read_to_assembly_alignment/physcomitrellopsis_africana_polished_flye_assembly_rmv_input_contam.reads.sorted.bam

