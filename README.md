### from raw data to variant annotation
The variant calling pipeline identifies single nucleotide variants present within whole genome sequence data. The variants are identified by comparing the datasets of an individual with a reference sequence.
#### Steps followed
Quality Control,
Reference Mapping,
Variant Calling,and
Variant Annotation

1. Quality Control: The first step of this variant calling pipeline involves the evaluation of the quality of raw sequencing data. Toolse used here include; fastqc https://github.com/s-andrews/FastQC and mutliqc tools https://github.com/ewels/MultiQC. Trimming was then performed using trim_galore https://github.com/FelixKrueger/TrimGalore; Here, the reads with base calls that have poor quality are removed. Adapter sequences, which remain attached to the raw reads are also removed before the downstream analysis. In addition, very short reads with fewer than 20 bases are removed, to avoid multiple mapping to the reference genome.

2. Reference Mapping:The filtered sequence reads are aligned to the reference genome of Bundibugyo Ebolavirus using BWA(Burrows-Wheeler Aligner) tool 0.7.10 http://bio-bwa.sourceforge.net/

