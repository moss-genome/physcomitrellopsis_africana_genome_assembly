#!/bin/bash
#SBATCH --job-name=purge_dups_pilon_pafricana_wengan_assembly_ispb_1
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mem=30G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

#module load minimap2/2.18
#module load python/3.6.3
module load bwa/0.7.5a
module load zlib/1.2.11
module load purge_dups/1.0.0

run_purge_dups.py -p bash config_pilon_pafricana_wengan_assembly.json /isg/shared/apps/purge_dups/1.0.0/src/ purge_dups_pilon_pafricana_wengan_assembly_ispb_1

