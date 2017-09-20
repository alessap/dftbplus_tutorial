#! /bin/bash

#SBATCH -p kemi_gemma2
#SBATCH -J dftbnegf
#SBATCH -o dftbneg_%j.out
#SBATCH -e dftbneg_%j.err
#SBATCH -t 10:00:00
#SBATCH -N 1 -n 4
#SBATCH --ntasks-per-core=2
#SBATCH --mem-per-cpu=4000MB

date

mkdir -p GS
mkdir -p contacts
ulimit -s unlimited

# molecular junction with periodic boundary conditions to compute the electrodes input files
cp dftb_in.hsd.drain dftb_in.hsd
srun -n 4 ../bin/dftb+negf
cp detailed.out detailed_drain.out

cp dftb_in.hsd.source dftb_in.hsd
srun -n 4 ../bin/dftb+negf
cp detailed.out detailed_source.out

# molecular junction as cluster
cp dftb_in.hsd.device dftb_in.hsd
srun -n 4 ../bin/dftb+negf
cp detailed.out detailed_device.out

date
