#! /bin/bash

for sample in `cat list.txt`
do
nohup fastq-dump --split-files --gzip $sample 

done
