#gmx editconf -f complex.gro -o newbox.gro -center 3.280 2.181 2.4775 -box 6.560 4.362 12

#(1) 
#geometrical center is a half of x and y axec of the box
#editconf -f complex.gro -o minmax.gro -d 1.2 
#editconf -f complex.gro -o newbox.gro -d 1.25 #-bt cubic 
editconf -f complex.gro -o newbox.gro -d 1.2 -bt cubic 



#(2)
#1.2nm box,  11.33400  10.58300   9.43500
#gmx editconf -f complex.gro -o newbox.gro -center 5.667 5.292 4.718 -box 11.334 10.583 16

#  13.14500  10.99600   7.44900
#editconf -f complex.gro -o newbox.gro -center 6.573 5.498 3.725 -box 13.145 10.996 18

#  13.12200  11.00800   7.11500
#editconf -f complex.gro -o newbox.gro -center 6.561 5.504 3.558 -box 13.122 11.008 18



#check pbc using tk console in VMD by typing "pbc box"

#You can visualize the location of the protofibril within the box using, for example, VMD. Load the structure in VMD and open the Tk console. Type the following (note that > indicates the Tk prompt, not something you actually type):
#> pbc box
