#!/bin/bash
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 24:00:00
#SBATCH --mail-user=yalu.zhou@northwestern.edu
#SBATCH --mail-type=END
#SBATCH --output=/home/yzh5179/rMATs_test_Yalu/PLDI-033/pipeline_CD4vsT-ALL/rMATS_test.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=10
#SBATCH --mem=6000
#SBATCH --job-name=MATS_unpaired

module unload mpi/openmpi-1.6.3-gcc-4.6.3
module load python/anaconda
python /home/yzh5179/software/rMATS.4.0.2/rMATS-turbo-Linux-UCS4/rmats.py \
--b1 /home/yzh5179/rMATs_test_Yalu/PLDI-033/b1_CD4_PLDI-033.txt \
--b2 /home/yzh5179/rMATs_test_Yalu/PLDI-033/b2_T-ALL_PLDI-033.txt \
--gtf /projects/b1034/hg19_data/Homo_sapiens.GRCh37.75.gtf \
--od /home/yzh5179/rMATs_test_Yalu/PLDI-033/pipeline_CD4vsT-ALL/ \
-t paired \
--readLength 76

