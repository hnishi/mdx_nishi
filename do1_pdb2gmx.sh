#/lfs/mtateno/chika/program/all/gromacs/share/gromacs/top

#gmx pdb2gmx -f rottrans02.pdb -ignh -ter -o complex.gro -p prm.top 
#gmx pdb2gmx -f k8.pdb -ignh -ter -o complex.gro -p prm.top 
pdb2gmx -f edited.pdb -ignh -ter -o complex.gro -p prm.top -water tip3p -ff amber99sb -merge all # mgimproved_amber99sb_parmbsc0

#<< _EOF
#i5
#1
#_EOF

#cp topol.top prm.top

#amberff99sb
#tip3p water



