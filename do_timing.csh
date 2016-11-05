#!/bin/csh
#

echo " "
echo " You do as [ nohup csh do_timing_nishi.csh > log & ]"
echo " "

date
#exit

########################
set numtry = 100000
set q_name = 5_41_eq  
set q_file = q_mdx.sh
########################
# (1) hard code 
@ itry = 1

#while (1) #infinite loop
while (${itry} <= ${numtry} ) #finite loop
  @ k1 = ` qstat | grep mtateno | grep ${q_name} |wc -l `

  if(${k1} == 0 ) then
    break
  endif
  if(${itry} == ${numtry} ) then
    echo " No enter into next stege "
    exit
  endif

  echo "  waiting step No. " ${itry}
  echo "    k1 = " $k1

  sleep 1m
  @ itry ++
end
echo " OK! Execute jobs. "

#sh do_grompp.sh 
qsub $q_file

date
#sleep 2m
