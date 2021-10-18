### From fastq to SNP Annotation
The variant calling pipeline identifies single nucleotide variants present within whole genome sequence data. The variants are identified by comparing the datasets of an individual with a reference sequence. The variant calling pipeline consists of a series of interlinked sequential steps
#### Steps include;
Quality Control,
Reference Mapping,
Dedubplication,
Local Realignment Around Indels, 
Variant Calling,and
Variant Annotation

1. Quality Control: The first phase of the workflow is the data pre-processing step, which involves cleaning of the raw sequence data (FASTQ files). Toolse used here include; fastqc https://github.com/s-andrews/FastQC and mutliqc tools https://github.com/ewels/MultiQC
2. Reference Mapping:The filtered sequence reads are aligned to the reference genome of Bundibugyo Ebolavirus using the BWA(Burrows-Wheeler Aligner) tool 0.7.10 http://bio-bwa.sourceforge.net/
