#! /bin/bash

for sample in `cat list.txt`
do
 fastq-dump --split-files --gzip $sample 

done
