#!/bin/bash
#SBATCH --job-name=pafricana_haslr_assembly
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


module load HASLR/0.8a1

/isg/shared/apps/python/3.8.1/bin/python3.8 /isg/shared/apps/HASLR/0.8a1/bin/haslr.py -t 40 -o pafricana_haslr_assembly -g 500m -l physcomitrellopsis_africana_promethion_fastq_reads-pass_rmv_contam.fastq -x nanopore -s DP8400020490TR_L01_28_1.fq.gz DP8400020490TR_L01_28_2.fq.gz DP8400020490TR_L01_117_1.fq.gz DP8400020490TR_L01_117_2.fq.gz
