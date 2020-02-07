#!/bin/bash
#SBATCH --job-name=filter_pafricana_raw_promethion_reads
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=ALL
#SBATCH --mem=250G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load biopython/1.70
module load python/3.6.3

python remove_contaminated_reads_pafricana.py
