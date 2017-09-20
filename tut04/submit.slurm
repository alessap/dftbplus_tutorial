#!/bin/sh

#SBATCH -p kemi_gemma3
#SBATCH -J DFTBTrans
#SBATCH -o out_%j.out
#SBATCH -e err_%j.err
#SBATCH -t 48:00:00
#SBATCH -N 1 -n 32
#SBATCH --ntasks-per-core=2
#SBATCH --mem-per-cpu=8000MB


date
source ~/.bashrc

export OMP_NUM_THREADS=32
mkdir -p GS contacts

ulimit -s unlimited

#echo 'junction single point DFTB'
cp dftb_in.hsd.junction dftb_in.hsd
srun -n 32 dftb+mpi-negf-r4921-ifort
cp detailed.out detailed_junction.out

# echo 'transport only of junction single point DFTB'
cp dftb_in.hsd.device dftb_in.hsd
srun -n 32 dftb+mpi-negf-r4921-ifort
cp detailed.out detailed_device.out

date

