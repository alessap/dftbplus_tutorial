# dftbplus_tutorial

DFTB+ tutorial written by Alessandro Pirrotta
This tutorial can be used on Linux system with the Slurm Workload Manager.
Both binary files and Slater-Koster parameters are NOT included here as can be downloaded from http://dftbplus.org and http://www.dftb.org.

In this tutorial I show hot to get started with the use of DFTB+ in computational chemistry. 
This tutorial includes: 
- Geometry optimisation of a small molecule;
- Obtaining cube files of molecular orbitals;
- Transmission and local current computations on molecular junction.

To generate a molecular junction, see the molecular_junction_generator code in my GitHub: https://github.com/alessap/molecular_junction_generator

What is in it:

**tut01/** geometry optimization

**tut02/** plot orbitals

**tut03/** cluster transport computation (without periodic boundary conditions (pbc))

**tut04/** supercell transport computation using a modified version of DFTB+NEGF (with pbc)

What you should get from http://dftbplus.org and http://www.dftb.org:

**bin/** the executables used in the tutorial should be placed here.

**slater_koster/** the Slater-Koster parameters used by DFTB+ in this tutorial should be placed here.
