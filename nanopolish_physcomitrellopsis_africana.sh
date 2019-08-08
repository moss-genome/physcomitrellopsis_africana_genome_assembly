#!/bin/bash
#SBATCH --job-name=nanopolish_physcomitrellopsis_africana_assembly
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 54
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=END
#SBATCH --mem=450G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load nanopolish/0.11.1
module load python/3.6.3
module load biopython/1.70
module load parallel/20180122

python /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/nanopolish_makerange.py /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/assembly.fasta | parallel --results /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/physcomitrellopsis_africana_assembly_nanopolish.results -P 9 --tmpdir /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/nanopolish_physcomitrellopsis_africana_tmp/ \
nanopolish variants --consensus -o /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/nanopolish_contigs/physcomitrellopsis_africana_assembly_polished.{1}.vcf -w {1} -r /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/5074_test_LSK109_30JAN19-reads/5074_test_LSK109_30JAN19-reads-pass.fastq -b /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/physcomitrellopsis_africana_genome.reads.sorted.bam -g /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/assembly.fasta -t 6 --min-candidate-frequency 0.1



