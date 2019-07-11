# AtacSeqWorkshop

```
# install.packages('BiocManager')
BiocManager::install('seandavi/AtacSeqWorkshop', build = TRUE, build_opts = "")
browseVignettes(package='AtacSeqWorkshop')
```

## Pre-requisites 

This workshop assumes:

* A working and up-to-date version of R
* Basic knowledge of R syntax
* Familiarity with the `r Biocpkg('GenomicRanges')` package and range manipulations
* Familiarity with BAM files and their contents

## Participation 

After a very brief review of ATAC-Seq and chromatin accessibility, students will work 
independently to follow this workflow. Additional materials are provided as links at
the end of the workshop for those wanting deeper exposure. Additional materials
include alignment from FASTQ files and peak calling.


## Time outline 

An example for a 45-minute workshop:

| Activity                     | Time |
|------------------------------|------|
| Introduction                 | 15m  |
| Independent work             | 2-3hr  |
| Additional exercises (optional, external) | up to 12 hours   |


## Learning goals 

* Describe how to import sequence alignments in BAM format into R
* Relate fragment size to genomic characteristics such as nucleosome occupancy and open chromatin.
* Perform basic alignment manipulations in R to enrich ATAC-seq data for chromatin characteristics.
* Gain familiarity with the IGV genome browser and examining data in genomic context.
* Visualize summaries of genomic signal using profile plots and heatmaps.

## Learning objectives 

* Load and save genomic data in BAM and BigWig formats [GenomicAlignments and rtracklayer].
* Perform basic QC plots from ATAC-Seq data.
* Isolate nucleosome-free and mononucleosome regions from ATAC-seq data.
* Install and use IGV to visualize data in genomic context.
* Create profile plots using the heatmaps package.

# Thanks

To Thomas Carroll at Rockefeller University for this larger workshop that served as inspiration: https://github.com/RockefellerUniversity/RU_ATACseq

