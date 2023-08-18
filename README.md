# SPARSE_TECHINIQUES
This project simulated and identifies the differences of three sparse recovery algorithms from three different categories.
Basis Pursuit(convex optimization)
Iteratively Reweighted least squares(non convex optimization)
Iterative hard thresholding(greedy algorithm)

plots of comparsion of NMSE,Recovery time and no of flops of three algorithms.

Simulation results have been provided in 'simulation results' folder

simulation data has been captured in plotting scripts. please run them to see the results
1.plotNMSE
2.plotRecoveryTime
3.plotFLOPS

Execution flow: (see the instruction as well provided inside each script)

1.data creation
Data sets created follow the systax - "iid"+"type of design matrix"+number1+"e"+number2
Type of design matrix - Gauss,Bern
number1 range - 1 to 10
number2 range - 1 to 3

2.IHT_NMSE
3.IHT_recoverytime
4.IHT_flops
5.FLOPSmeasure (to get flops count)

6.BP_NMSE
7.BP_recoverytime
8.BP_flops
9.FLOPSmeasure (to get flops count)

following scripts take comparitively longer time for larger data set
10.IRLS_NMSE
11.IRLS_recoverytime
12.IRLS_flops
13.FLOPSmeasure (to get flops count)

