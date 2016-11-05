#!/bin/sh
#PBS -q medium-b
#PBS -l select=1:ncpus=64:mpiprocs=64:mem=64gb
#PBS -N 5_41_min
#PBS -m ae
#PBS -l walltime=720:00:00

cd $PBS_O_WORKDIR

set -e

grompp -v -f MIN1.mdp -c solv_na_mg.gro -p prm.top -o min1
mpijob /lfs/mtateno/chika/program/all/gromacsMPI/bin/mdrun_mpi -v -deffnm min1
grompp -v -f MIN2.mdp -c min1.gro -p prm.top -o min2
mpijob /lfs/mtateno/chika/program/all/gromacsMPI/bin/mdrun_mpi -v -deffnm min2
grompp -v -f MIN3.mdp -c min2.gro -p prm.top -o min3
mpijob /lfs/mtateno/chika/program/all/gromacsMPI/bin/mdrun_mpi -v -deffnm min3


#mpirun -np 8 mdrun_mpi_d -deffnm md1

#The estimate for PME load will dictate how many processors should be dedicated to the PME calculation, and how many for the PP calculations. Refer to the GROMACS 4 publication and the manual for details. For a cubic box, the optimal setup will have a PME load of 0.25 (3:1 PP:PME - we're in luck!); for a dodecahedral box, the optimal PME load is 0.33 (2:1 PP:PME). When executing mdrun, the program should automatically determine the best number of processors to assign for the PP and PME calculations. Thus, make sure you indicate an appropriate number of nodes for your calculation (the value of -np X), so that you can get the best performance. For this system, I achieved roughly 14 ns/day performance on 24 CPU's (18 PP, 6 PME).
