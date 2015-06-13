#!/usr/bin/env bash

# Simply run PROMELA file one time
# /home/joaquim/Downloads/Spin/Src6.4.3/spin voter.pml

# Run PROMELA file generating a verifier in pan.c
/home/joaquim/Downloads/Spin/Src6.4.3/spin -a voter.pml

# Compile and execute that verifier, following simulation trail and printing all the statements
cc pan.c -o pan

./pan

/home/joaquim/Downloads/Spin/Src6.4.3/spin -t -p voter.pml