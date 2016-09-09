#!/bin/bash

set -x

exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>exprtk_perftest_`date "+%Y%m%d%H%M%S"`.log 2>&1


# Define compiler

if [ "$#" -eq 1 ]; then
    export CC=$1
else
    export CC='g++-6'
fi



# Compile benchmarks

make clean all



# Run vector benchmarks - parameter: vector size

./exprtk_vector_benchmark 1000
./exprtk_vector_benchmark 5000
./exprtk_vector_benchmark 10000
./exprtk_vector_benchmark 50000
./exprtk_vector_benchmark 100000
./exprtk_vector_benchmark 500000
./exprtk_vector_benchmark 1000000
./exprtk_vector_benchmark 5000000
./exprtk_vector_benchmark 10000000
./exprtk_vector_benchmark 50000000



# Run general computation benchmark

./exprtk_benchmark



# Dump os/kernal version info

uname -a



# Dump CPU details

lscpu

cat /proc/cpuinfo
