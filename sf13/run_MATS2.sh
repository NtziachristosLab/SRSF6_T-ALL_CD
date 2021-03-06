#MSUB -A b1042
#MSUB -q genomics
#MSUB -l walltime=24:00:00
#MSUB -m a
#MSUB -j oe
#MOAB -W umask=0113
#MSUB -l nodes=1:ppn=10
#MSUB -N MATS_unpaired

module unload mpi/openmpi-1.6.3-gcc-4.6.3
module load python/anaconda
python /home/yzh5179/software/rMATS.4.0.2/rMATS-turbo-Linux-UCS4/rmats.py \
--b1 /home/yzh5179/rMATs_test_Yalu/PLDI-050/b1_Jurkat_DMSO.txt \
--b2 /home/yzh5179/rMATs_test_Yalu/PLDI-050/b2_Jurkat_P5091_24hr.txt \
--gtf /projects/b1034/hg19_data/Homo_sapiens.GRCh37.75.gtf \
--od /home/yzh5179/rMATs_test_Yalu/PLDI-050/Output/ \
-t paired \
--readLength 76

