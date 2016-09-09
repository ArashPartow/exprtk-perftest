#### Introduction

The script **run.sh** will compile and run vector and standard benchmark
suites. The process should take roughly 10-15 minutes on a 3GHz machine.
A log of executions will be created called exprtk_perftest.log



Assumes g++-6 is installed by default:

    ./run.sh


Examples using the compiler passed in as first argument:

    ./run.sh clang
    ./run.sh g++-4.8
    ./run.sh g++-4.9
    ./run.sh g++-5
    ./run.sh g++-5.1
    ./run.sh g++-6
    ./run.sh icpc
    ./run.sh icc
    ./run.sh mpicc

