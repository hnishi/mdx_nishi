#!/bin/bash

#trjconv -f md1.trr -s md1.tpr -o md1_ini_nw.gro -pbc whole -e 0 <<< "non-water"
#trjconv -f md1.trr -s md1.tpr -o md1_50001fr_nw.xtc -pbc whole  <<< "non-water"

trjconv -s md1.tpr -o z01.xtc -f md1.trr -pbc whole -skip 100
trjconv -s md1.tpr -o z02.xtc -f z01.xtc -pbc nojump
trjconv -f z01.xtc -s md1.tpr -o z03.xtc -n forpbc.ndx -pbc cluster <<< "DNA"
trjconv -f z03.xtc -s md1.tpr -o z04.xtc -center
trjconv -f z06nojump2.xtc -s md1.tpr -o z11atomcenter.xtc -pbc atom -center

