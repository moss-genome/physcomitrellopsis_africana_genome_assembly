#!/bin/bash
#SBATCH --job-name=nanopolish_pafricana_flye_rmv_contam_1_contigs
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 36
#SBATCH --partition=himem2
#SBATCH --qos=himem
#SBATCH --mail-type=ALL
#SBATCH --mem=950G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load nanopolish/0.11.1
module load python/3.6.3
module load biopython/1.70
module load parallel/20180122

python nanopolish_makerange.py pafricana_flye_assembly_rmv_contam_1_contigs.fasta | parallel --results nanopolish.results -P 9 --tmpdir nanopolish_contigs_1_tmp/ \
nanopolish variants --consensus -o nanopolish_polished_pafricana_flye_rmv_contam_contigs_1/pafricana_flye_rmv_contam_assembly_polished.{1}.vcf -w {1} -r /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/filter_contaminated_raw_promethion_reads/physcomitrellopsis_africana_promethion_fastq_reads-pass_rmv_contam.fastq -b pafricana_flye_rmv_contam_assembly_reads.sorted.bam -g pafricana_flye_assembly_rmv_contam_1_contigs.fasta -t 4 --min-candidate-frequency 0.1


