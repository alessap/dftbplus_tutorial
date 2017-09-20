#! /bin/bash

#SBATCH -p kemi_gemma2
#SBATCH -J dftb
#SBATCH -o dftb_%j.out
#SBATCH -e dftb_%j.err
#SBATCH -t 10:00:00
#SBATCH -N 1 -n 1
#SBATCH --mem-per-cpu=4000MB

date

ulimit -s unlimited

srun -n 1 ../bin/dftb+_1.2.2.x86_64-linux

date
