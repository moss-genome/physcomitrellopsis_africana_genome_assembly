#!/bin/bash
#SBATCH --job-name=pafricana_polished_flye_assembly_rmv_input_contam_post_purgehap_purgedup
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=ALL
#SBATCH --mem=250G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load minimap2/2.17
module load python/3.6.3
#module load busco/3.0.2b
#module unload augustus
#export PATH=/home/CAM/astarovoitov/augustus/bin:/home/CAM/astarovoitov/augustus/scripts:$PATH
#export AUGUSTUS_CONFIG_PATH=$HOME/augustus/config


python /home/CAM/astarovoitov/purge_dups/scripts/run_purge_dups.py -p bash config_pafricana_flye_assembly_rmv_input_contam_post_purgehap.json /home/CAM/astarovoitov/purge_dups/src/ pafricana_polished_flye_assembly_rmv_input_contam_post_purgehap

