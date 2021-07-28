#!/bin/bash
#SBATCH --job-name=masurca_assembly_pafricana
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=ALL
#SBATCH --mem=250G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load singularity/3.1.1
module load MaSuRCA/4.0.3
module load perl/5.32.1

### sbatch -D /labs/Wegrzyn/FagusGenome/fagr/masurca_assembly/mr_pass1 -J create_mega_reads -a 1-127 -c 16 -p general -q general --mem=100G -N 1 mr_pass1/create_mega_reads.sh

./assemble.sh



