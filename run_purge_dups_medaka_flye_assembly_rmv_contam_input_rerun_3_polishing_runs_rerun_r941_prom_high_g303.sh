#!/bin/bash
#SBATCH --job-name=purge_dup_medaka_flye_assembly_rmv_contam_input_rerun_3_polishing_runs_rerun_r941_prom_high_g303
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=ALL
#SBATCH --mem=100G
#SBATCH --mail-user=andrew.starovoitov@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load minimap2/2.17
module load python/3.6.3
#module load busco/3.0.2b
#module unload augustus
#export PATH=/home/CAM/astarovoitov/augustus/bin:/home/CAM/astarovoitov/augustus/scripts:$PATH
#export AUGUSTUS_CONFIG_PATH=$HOME/augustus/config


python /home/CAM/astarovoitov/purge_dups/scripts/run_purge_dups.py -p bash config_medaka_flye_assembly_rmv_contam_input_rerun_3_polishing_runs_rerun_r941_prom_high_g303.json /home/CAM/astarovoitov/purge_dups/src/ medaka_flye_assembly_rmv_contam_input_rerun_3_polishing_runs_rerun_r941_prom_high_g303_purgedup

