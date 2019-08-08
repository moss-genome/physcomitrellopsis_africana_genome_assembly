#!/bin/bash
#SBATCH --job-name=centrifuge_physcomitrellopsis_africana_polished_3kb
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=END
#SBATCH --mem=200G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load centrifuge/1.0.4-beta

centrifuge -f -x p+h+v --report-file centrifuge_pafricana_polished_3kb_report.tsv --quiet --min-hitlen 50 /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/polished_assembly/physcomitrellopsis_africana_polished_3kb_assembly.fasta
