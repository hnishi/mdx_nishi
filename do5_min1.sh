#grompp_mpi_d -f IONS.mdp -c solv_mg_na.gro -p prm.top -o min1.tpr
#mpirun -np 2 mdrun_mpi_d -v -deffnm min1 

qsub q_min.sh
