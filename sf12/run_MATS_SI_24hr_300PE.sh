#!/bin/bash
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 24:00:00
#SBATCH --mail-user=yalu.zhou@northwestern.edu
#SBATCH --mail-type=END
#SBATCH --output=/home/yzh5179/rMATs_test_Yalu/PLDI-069/Output_2x2/rMATS_test.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=10
#SBATCH --mem=6000
#SBATCH --job-name=MATS_unpaired

module unload mpi/openmpi-1.6.3-gcc-4.6.3
module load python/anaconda
python /home/yzh5179/software/rMATS.4.0.2/rMATS-turbo-Linux-UCS4/rmats.py \
--b1 /home/yzh5179/rMATs_test_Yalu/PLDI-069/b1_Jurkat_DMSO_24hr.txt \
--b2 /home/yzh5179/rMATs_test_Yalu/PLDI-069/b2_Jurkat_H3B8800_24hr.txt \
--gtf /projects/b1034/hg19_data/Homo_sapiens.GRCh37.75.gtf \
--od /home/yzh5179/rMATs_test_Yalu/PLDI-069/Output_2x2/ \
-t paired \
--readLength 151

