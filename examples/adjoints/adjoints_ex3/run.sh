#!/bin/bash

#set -x

source $LIBMESH_DIR/examples/run_common.sh

example_name=adjoints_ex3

example_dir=examples/adjoints/$example_name

options="-pc_type jacobi"

run_example "$example_name" $options

# Benchmark parameters
benchmark_example 1 "$example_name" max_adaptivesteps=18
