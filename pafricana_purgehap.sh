#!/bin/bash
#SBATCH --job-name=purgehre_pafricana_polished_assembly
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 25
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=50G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o purgehapre_%j.out
#SBATCH -e purgehapre_%j.err

module load bedtools/2.25.0
module load samtools/1.7
module load minimap2/2.17
module load MUMmer/4.0.2
module load perl/5.28.1
module load R/3.6.0

# /isg/shared/apps/purge_haplotigs/1.0/bin/purge_haplotigs readhist -b /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/physcomitrellopsis_africana_polished_3kb_rmvcomtam_genome.reads.sorted.bam -g /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/physcomitrellopsis_africana_polished_3kb_rmvcontam_assembly.fasta -t 25

# /isg/shared/apps/purge_haplotigs/1.0/bin/purge_haplotigs contigcov -i physcomitrellopsis_africana_polished_3kb_rmvcomtam_genome.reads.sorted.bam.gencov -l 5 -m 60 -h 190

/isg/shared/apps/purge_haplotigs/1.0/bin/purge_haplotigs purge -g physcomitrellopsis_africana_polished_3kb_rmvcontam_assembly.fasta -c coverage_stats.csv -b /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/physcomitrellopsis_africana_polished_3kb_rmvcomtam_genome.reads.sorted.bam -t 25

