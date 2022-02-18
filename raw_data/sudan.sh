#!/bin/bash

# Download from SRA Sudan ebolavirus isolate to be used for testing the workflow

fastq-dump --split-3 --gzip SRR7167616
