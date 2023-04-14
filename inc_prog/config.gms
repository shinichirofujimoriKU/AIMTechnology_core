option lp=cplex;
option reslim=10800;
* option threads=%Nthreads%;
$echo parallelmode -1 > cplex.opt
$echo threads=%Nthreads% >>cplex.opt
$echo predual -1 >>cplex.opt
$echo lpmethod 4 >>cplex.opt
$echo bardisplay 2 >>cplex.opt
$echo barorder 0 >>cplex.opt
$echo barcolnz 100 >> cplex.opt

$ifthen.debug not %debug%==on
option limrow=0,limcol=0,solprint=off, sysout=off;
$offlisting
$offsymxref offsymlist
option profile=2;
option profiletol=0.01;
$endif.debug
