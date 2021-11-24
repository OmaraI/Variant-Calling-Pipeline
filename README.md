### from raw data to variant annotation
The variant calling pipeline identifies single nucleotide variants present within whole genome sequence data. The variants are identified by comparing the datasets of an individual with a reference sequence.
#### Steps followed
Quality Control,
Reference Mapping,
Variant Calling and
Variant Annotation

1. Quality Control: The first step of this variant calling pipeline involves the evaluation of the quality of raw sequencing data. Toolse used here include; fastqc https://github.com/s-andrews/FastQC and multiqc tools https://github.com/ewels/MultiQC. 

2. Trimming was then performed using trim_galore https://github.com/FelixKrueger/TrimGalore; Here, the reads with base calls that have poor quality are removed. Adapter sequences, which remain attached to the raw reads are also removed before the downstream analysis. In addition, very short reads with fewer than 20 bases are removed, to avoid multiple mapping to the reference genome.

3. Reference Mapping:The filtered sequence reads are aligned to the reference genome of Bundibugyo Ebolavirus using BWA(Burrows-Wheeler Aligner) tool 0.7.10 http://bio-bwa.sourceforge.net/

4. Variant Calling: FreeBayes tool was used to call variants in isolates of Bundibugyo Ebolavirus. This tool is haplotype-based, in the sense that it calls variants based on the literal sequences of reads aligned to a particular target, not their precise alignment. FreeBayes uses short-read alignments (BAM files) for any number of individuals from a population and a reference genome to determine the most-likely combination of genotypes for the population at each position in the reference. It reports positions which it finds putatively polymorphic in variant call file (VCF) format https://github.com/freebayes/freebayes/blob/master/README.md

5. Variant Annotation: SnpEff was the tool used to annotate the variants. This tool annotates and predicts the effects of variants on genes https://github.com/sanger-pathogens/SnpEffWrapper 

