### Physcomitrellopsis africana Genome Assembly
Moss Genome Assembly Spreadsheet: https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit?usp=sharing

# 1. Sequencing.

## Nanopore
*     Number of Reads: 16,640,338
      Average Read Length: 3,080.31
      Coverage (500,000,000 bp genome size): 102.51

      Raw Sequences Location:
      /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/5074_test_LSK109_30JAN19-fast5_pass/

      Basecalled Sequences Location:
      /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/5074_test_LSK109_30JAN19-reads/


## Illumina
*     Read Set 1:
      Number of Reads: 285,849,119
      Average Read Length: 100
      Coverage (500,000,000 bp genome size): 57.17

      Location:
      /archive/projects/EBP/physcomitrellopsis_africana_5075/Illumina_data/DP8400020490TR_L01_28_1.fq.gz
      /archive/projects/EBP/physcomitrellopsis_africana_5075/Illumina_data/DP8400020490TR_L01_28_2.fq.gz


*     Read Set 2:
      Number of Reads: 243,647,638
      Average Read Length: 100
      Coverage (500,000,000 bp genome size): 48.73

      Location:
      /archive/projects/EBP/physcomitrellopsis_africana_5075/Illumina_data/DP8400020490TR_L01_117_1.fq.gz
      /archive/projects/EBP/physcomitrellopsis_africana_5075/Illumina_data/DP8400020490TR_L01_117_2.fq.gz

## PhaseGenomics HiC
*     Number of Reads: 72,164,138
      Average Read Length: 150
      Coverage (500,000,000 bp genome size): 21.65

      Location:
      /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/hic/hic_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina/fastq/5075_BKDL210029940-1a_raw_R1.fastq.gz
      /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/hic/hic_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina/fastq/5075_BKDL210029940-1a_raw_R2.fastq.gz


## Long Read Contamination Detection
Basecalled Nanopore long reads were classified with [Centrifuge](https://ccb.jhu.edu/software/centrifuge/), read ids that returned hits were isolated into a text file, and contaminated reads were filtered from the basecalled sequences using the list of read ids.  

*     Number of Reads: 14,495,188
      Average Read Length: 2,232.47
      Coverage (500,000,000 bp genome size): 64.72

      Location:
      /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/filter_contaminated_raw_promethion_reads/physcomitrellopsis_africana_promethion_fastq_reads-pass_rmv_contam.fastq

## HiC Read Contamination Detection:
HiC sequencing reads were classified using Kraken to remove contaminated sequences.  

*     Number of Reads: 26,160,651
      Average Read Length: 150
      Coverage (500,000,000 bp genome size): 7.85

      Location:
      /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/kraken/kraken_hic_pafricana/5075_BKDL210029940-1a_bpv_unclassified_1.fastq
      /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/kraken/kraken_hic_pafricana/5075_BKDL210029940-1a_bpv_unclassified_2.fastq


# 2. Genome Assembly.

## Flye Assembly
Draft genome assembly created using Flye genome assembly program.
     
**flye_assembly_moss_30JAN19_5074.sh** script runs Flye assembly program with basecalled sequencing reads as input.

**P. africana Initial Flye Assembly**
*     /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_initial/assembly.fasta

      Genome Size: 540816378
      # of Contigs: 9796
      N50: 151896
      BUSCO:
          Viridiplantae: C:48.9%[S:45.4%,D:3.5%],F:25.9%,M:25.2%,n:425
          Embryophyta: C:24.8%[S:23.3%,D:1.5%],F:13.1%,M:62.1%,n:1614

**P. africana Flye Assembly (< 3Kb scaffolds filtered)**
*     /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/pafricana_initial_flye_assembly_3kb.fasta

      Genome Size: 538685308
      # of Contigs: 8388
      N50: 152580
      BUSCO:
          Viridiplantae: C:49.7%[S:45.9%,D:3.8%],F:25.4%,M:24.9%,n:425
          Embryophyta: C:25.0%[S:23.5%,D:1.5%],F:13.3%,M:61.7%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Flye Assembly (Rmv Contam Input)
Draft genome assembly created using Flye genome assembly program with cleaned input reads.
   1. **centrifuge_pafricana_promethion_reads.sh** runs centrifuge classification program on the raw basecalled sequencing reads.
   1. **isolate_contaminated_read_ids.py** creates a list of contaminated read ids from the centrifuge output file **centrifuge_pafricana_promethion_fastq_reads_444526.out**.
   1. **filter_reads.sh** runs **remove_contaminated_reads_pafricana.py** to remove contaminated reads from basecalled sequencing reads.
   1. **flye_assembly_rmv_contam_moss_30JAN19_5074.sh** runs Flye genome assembly program with clean input reads.
     
**P. africana Flye Assembly (rmv contam input reads)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/flye_assembly_rmv_contam/assembly.fasta

      Genome Size: 547438596
      # of Contigs: 5754
      N50: 388035
      BUSCO:
          Viridiplantae: C:71.7%[S:66.8%,D:4.9%],F:16.9%,M:11.4%,n:425
          Embryophyta: C:49.3%[S:46.3%,D:3.0%],F:10.4%,M:40.3%,n:1614
          
**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Flye Assembly (rmv contam input reads & 3 additional polishing runs)
Draft genome assembly created using Flye genome assembly program with clean read input reads and 3 additional polishing runs.

**flye_assembly_pafricana_rmv_contam_input_rerun_3_polishing_runs.sh** runs Flye assembly program with clean input reads & 3 additional polishing runs.

**P. africana Flye Assembly (rmv contam input reads & 3 additional polishing runs)**

    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam_input_rerun/flye_assembly_rmv_contam_input_rerun_3_polishing_runs/assembly.fasta

      Genome Size: 556343009
      # of Contigs: 4721
      N50: 596646
      BUSCO:
          Viridiplantae: C:89.4%[S:77.9%,D:11.5%],F:4.0%,M:6.6%,n:425
          Embryophyta: C:70.3%[S:63.7%,D:6.6%],F:4.3%,M:25.4%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Shasta Assembly
**Note:** Shasta Assembly was not selected for further refinement 

Draft genome assembly created using Shasta genome assembly program.
   1. **FastqToFasta.py** converts input reads from fastq format to fasta format
   1. **run_shasta_assembly_minlen_500.sh** runs Shasta genome assembly program with minimum accepted input read length of 500 base pairs
     
**P. africana Shasta Assembly (minlen 500)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/test_shasta_assembly/2ShastaRun/Assembly.fasta

      Genome Size: 223004245
      # of Contigs: 8945
      N50: 51351
      BUSCO:
          Viridiplantae: C:36.7%[S:36.2%,D:0.5%],F:23.8%,M:39.5%,n:425
          Embryophyta: C:17.5%[S:17.4%,D:0.1%],F:12.5%,M:70.0%,n:1614
          
**P. africana Shasta Assembly (minlen 500 & <3kb filtered)**

    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/test_shasta_assembly/2ShastaRun/pafricana_shasta_assembly_3kb_minlen_500.fasta

      Genome Size: 220227121
      # of Contigs: 7135
      N50: 52035
      BUSCO:
          Viridiplantae: C:36.7%[S:36.2%,D:0.5%],F:23.8%,M:39.5%,n:425
          Embryophyta: C:17.4%[S:17.3%,D:0.1%],F:12.4%,M:70.2%,n:1614
  
**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Shasta Assembly (rmv contam input)
**Note:** Shasta Assembly (rmv contam input) was not selected for further refinement

Draft genome assembly created using Shasta genome assembly program with cleaned input reads.
   1. **centrifuge_pafricana_promethion_reads.sh** runs centrifuge classification program on the raw basecalled sequencing reads.
   1. **isolate_contaminated_read_ids.py** creates a list of contaminated read ids from the centrifuge output file **centrifuge_pafricana_promethion_fastq_reads_444526.out**.
   1. **filter_reads.sh** runs **remove_contaminated_reads_pafricana.py** to remove contaminated reads from basecalled sequencing reads.
   1. **FastqToFasta.py** converts clean input reads from fastq format to fasta format
   1. **run_shasta_assembly_minlen_500_rmv_contam_input.sh** runs Shasta genome assembly program with clean input reads and minimum accepted input read length of 500 base pairs.
     
**P. africana Shasta Assembly (minlen 500 & rmv contamination input reads)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/test_shasta_assembly/ShastaRun_pafricana_rmv_contam_minreadlen_500/Assembly.fasta

      Genome Size: 211680036
      # of Contigs: 8515
      N50: 48947
      BUSCO:
          Viridiplantae: C:38.3%[S:38.1%,D:0.2%],F:24.2%,M:37.5%,n:425
          Embryophyta: C:19.9%[S:19.6%,D:0.3%],F:12.3%,M:67.8%,n:1614
          
**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Haslr Assembly
Draft genome assembly created using Haslr genome assembly program.
     
**pafricana_run_haslr_assembly.sh** script runs Haslr assembly program with raw Illumina reads as input.

**P. africana Initial Haslr Assembly**
*     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_haslr_assembly/assembly_run_1/pafricana_haslr_assembly/asm_contigs_k49_a3_c250_lr25x_b500_s3_sim0.85/asm.final.fa

      Genome Size: 218471996
      # of Contigs: 10739
      N50: 36010
      BUSCO:
          Viridiplantae: C:49.4%[S:45.4%,D:4.0%],F:5.6%,M:45.0%,n:425
          Embryophyta: C:39.5%[S:36.7%,D:2.8%],F:2.7%,M:57.8%,n:1614

## Haslr Assembly (trimmed Illumina read input)
Draft genome assembly created using Haslr genome assembly program.

**sickle_trim_pafricana_DP_illumina_reads.sh** trims the both Illumina read sets.
**pafricana_run_haslr_assembly_trimmed_illumina_reads.sh** script runs Haslr assembly program with trimmed Illumina reads as input.

**P. africana Haslr Assembly (trimmed Illumina read input)**
*     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_haslr_assembly/assembly_run_2/pafricana_haslr_assembly/asm_contigs_k49_a3_c250_lr25x_b500_s3_sim0.85/asm.final.fa

      Genome Size: 295988232
      # of Contigs: 12738
      N50: 52286
      BUSCO:
          Viridiplantae: C:94.1%[S:80.9%,D:13.2%],F:1.2%,M:4.7%,n:425
          Embryophyta: C:83.4%[S:70.1%,D:13.3%],F:2.0%,M:14.6%,n:1614


## Wengan Assembly
Draft genome assembly created using Wengan genome assembly program.
     
**pafricana_run_wengan_assembly.sh** script runs Wengan assembly program with raw Illumina reads as input.

**P. africana Initial Wengan Assembly**
*     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_wengan_assembly/wengan_assembly_run1/pafricana_asm_wengan.SPolished.asm.wengan.fasta

      Genome Size: 570434569
      # of Contigs: 14003
      N50: 120153
      BUSCO:
          Viridiplantae: C:96.4%[S:76.9%,D:19.5%],F:1.6%,M:2.0%,n:425
          Embryophyta: C:86.4%[S:70.8%,D:15.6%],F:1.9%,M:11.7%,n:1614

## Wengan Assembly (trimmed Illumina read input)
Draft genome assembly created using Wengan genome assembly program.
     
**pafricana_run_wengan_assembly_trimmed_illumina_reads.sh** script runs Wengan assembly program with trimmed Illumina reads as input.

**P. africana Wengan Assembly (trimmed Illumina read input)**
*     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_wengan_assembly/wengan_assembly_run2/pafricana_asm_wengan.SPolished.asm.wengan.fasta

      Genome Size: 466642697
      # of Contigs: 10516
      N50: 119422
      BUSCO:
          Viridiplantae: C:96.4%[S:77.6%,D:18.8%],F:1.6%,M:2.0%,n:425
          Embryophyta: C:86.2%[S:70.7%,D:15.5%],F:1.9%,M:11.9%,n:1614

## Masurca Hybrid Assembly (BEST ASSEMBLY)
Genome assembly created using Masurca genome assembly program.

**config_pafricana_masura_hybrid_assembly.txt** contains the parameters to run Masurca.
**run_masurca_hybrid_assembly_pafricana.sh** script runs Masurca assembly program with basecalled sequencing reads and raw Illumina reads as input.

**P. africana Masurca Hybrid Assembly**
*     /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/masurca/pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina/CA.mr.41.17.15.0.02/primary.genome.scf.fasta

      Genome Size: 506,222,239  
      # of Contigs: 3,571  
      N50: 381,330  
      BUSCO:  
          Viridiplantae: C:96.4%[S:80.9%,D:15.5%],F:1.2%,M:2.4%,n:425  
          Embryophyta: C:86.1%[S:71.4%,D:14.7%],F:2.0%,M:11.9%,n:1614  

# 3. Genome Assembly Polishing

## Nanopolish on Flye Assembly
   1. Basecalled fastq reads are linked to signal-level nanopore raw fast5 data using nanopolish index.
      1. **nanopolish_index_physcomitrellopsis_africana.sh** indexes the basecalled reads.
   1. Basecalled reads are aligned to the initial flye assembly using minimap2, and the bam alignment file is sorted and indexed using samtools.
      1. **minmap_alignment_physcomitrellopsis_africana.sh** script performs minimap2 alignment of reads to assembly and samtools processing of bam alignment file.
   1. Polished genome assembly is created with nanopolish.
      1. **nanopolish_physcomitrellopsis_africana.sh** generates polished assembly contigs in 50kb parts in vcf format (output and temp directories need to be created before running script).
   1. Final polished genome assembly is generated by compiling all polished contig files using nanopolish vcf2fasta
      1. **nanopolish_vcf_to_fasta.sh** script converts polished contig files into a polished genome assembly

**P. africana Polished Flye Assembly**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/polished_assembly/physcomitrellopsis_africana_polished_assembly.fa

      Genome Size: 534238232
      # of Contigs: 9791
      N50: 150051
      BUSCO:
          Viridiplantae: C:85.6%[S:74.8%,D:10.8%],F:7.3%,M:7.1%,n:425
          Embryophyta: C:65.6%[S:59.2%,D:6.4%],F:5.3%,M:29.1%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Nanopolish on Flye Assembly (Rmv Contam Input)
   1. Basecalled fastq reads are linked to signal-level nanopore raw fast5 data using nanopolish index.
      1. **nanopolish_index_pafricana_flye_rmv_contam.sh** indexes the basecalled reads.
   1. Basecalled reads are aligned to the initial flye assembly using minimap2, and the bam alignment file is sorted and indexed using samtools.
      1. **minmap2_alignment_pafricana_flye_rmv_contam.sh** script performs minimap2 alignment of reads to assembly and samtools processing of bam alignment file.
   1. Polished genome assembly is created with nanopolish.
      1. **divide_genome_assembly.py** divides the genome assembly into six partial assemblies, each partial assembly is named **pafricana_flye_assembly_rmv_contam_{DIGITS_1-9}_contigs.fasta**.
      1. Each partial assembly has a nanopolish script with individual output and temporary directories. The input assembly file, output directory, and temporary directory are the only parameters that need to be changed when calling nanopolish in the script. The scripts are named according to the name of the partial assembly i.e **nanopolish_pafricana_flye_rmv_contam_{DIGITS_1-9}_contigs.sh**.
   1. Final polished genome assembly is generated by compiling all polished contig files using nanopolish vcf2fasta
      1. **nanopolish_vcf_to_fasta_flye_rmv_input_contam.sh** script converts polished contig files into a polished genome assembly

**P. africana Polished Flye Assembly (rmv contam input reads)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/polished_pafricana_flye_assembly_rmv_contam.fasta

      Genome Size: 545041764
      # of Contigs: 5754
      N50: 386201
      BUSCO:
          Viridiplantae: C:88.2%[S:78.8%,D:9.4%],F:5.4%,M:6.4%,n:425
          Embryophyta: C:67.3%[S:60.7%,D:6.6%],F:4.8%,M:27.9%,n:1614

**P. africana Polished Flye Assembly (rmv contam input reads & <3kb contigs)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/polished_pafricana_flye_assembly_3kb_rmv_contam.fasta

      Genome Size: 542202628
      # of Contigs: 3968
      N50: 388959
      BUSCO:
          Viridiplantae: C:87.8%[S:78.4%,D:9.4%],F:5.9%,M:6.3%,n:425
          Embryophyta: C:67.1%[S:60.5%,D:6.6%],F:5.1%,M:27.8%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Medaka on Flye Assembly (rmv contam input reads & 3 additional polishing runs)

**medaka_pafricana_genome.sh** runs Medaka error correction program on Flye assembly with clean input reads & 3 additional polishing runs.

**P. africana Flye Assembly (rmv contam input reads, 3 additional polishing runs, & Medaka polishing)**

    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/medaka/medaka_flye_assembly_rmv_contam_input_rerun_3_polishing_runs_rerun_r941_prom_high_g303/consensus.fasta
      
      Genome Size: 557068589
      # of Contigs: 5045
      N50: 590698
      BUSCO:
          Viridiplantae: C:92.5%[S:80.0%,D:12.5%],F:2.8%,M:4.7%,n:425
          Embryophyta: C:72.4%[S:64.5%,D:7.9%],F:3.4%,M:24.2%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Medaka on Haslr Assembly (trimmed Illumina read input)

**medaka_pafricana_haslr_assembly_trimmed_illumina_reads.sh** runs Medaka error correction program on Haslr Assembly (trimmed Illumina read input).

**P. africana Haslr Assembly (trimmed Illumina read input & Medaka polishing)**
    /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/medaka/medaka_haslr_assembly_trimmed_illumina_reads_r941_prom_high_g303/consensus.fasta
      
      Genome Size: 295737460
      # of Contigs: 12737
      N50: 52314
      BUSCO:
          Viridiplantae: C:90.6%[S:81.2%,D:9.4%],F:5.2%,M:4.2%,n:425
          Embryophyta: C:77.3%[S:68.2%,D:9.1%],F:5.0%,M:17.7%,n:1614

## Medaka on Wengan Assembly (trimmed Illumina read input)

**medaka_pafricana_wengan_assembly_trimmed_illumina_reads_r941_prom_high_g303.sh** runs Medaka error correction program on Wengan Assembly (trimmed Illumina read input).

**P. africana Wengan Assembly (trimmed Illumina read input & Medaka polishing)**
    /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/medaka/medaka_pafricana_wengan_assembly_trimmed_illumina_reads_r941_prom_high_g303/consensus.fasta
      
      Genome Size: 434411272
      # of Contigs: 7639
      N50: 132405
      BUSCO:
          Viridiplantae: C:93.2%[S:81.4%,D:11.8%],F:4.7%,M:2.1%,n:425
          Embryophyta: C:79.7%[S:68.4%,D:11.3%],F:4.9%,M:15.4%,n:1614

## Pilon on Initial Wengan Assembly

**bowtie2_index_pafricana_wengan_assembly.sh** indexes Initial Wengan Assembly.
**bowtie2_align_pafricana_wengan_assembly.sh** aligns the Initial Wengan Assembly to the raw Illumina reads.
**samtools_convert_index_wengan_assembly.sh** converts the resulting SAM alignment files to BAM format, then sorts and indexes both BAM files.
**pilon_pafricana_wengan_assembly.sh** runs Pilon error correction program on Initial Wengan Assembly.

**P. africana Wengan Assembly (Pilon polishing)**

    /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pilon/pilon_pafricana_wengan_assembly/pafricana_wengan_assembly.fasta
      
      Genome Size: 568413172
      # of Contigs: 14003
      N50: 119190
      BUSCO:
          Viridiplantae: C:96.5%[S:77.2%,D:19.3%],F:1.6%,M:1.9%,n:425
          Embryophyta: C:86.4%[S:70.8%,D:15.6%],F:1.9%,M:11.7%,n:1614

## Pilon on Wengan Assembly (trimmed Illumina read input)

**bowtie2_index_pafricana_wengan_assembly_trimmed_illumina_reads.sh** indexes Wengan Assembly (trimmed Illumina read input).
**bowtie2_align_pafricana_wengan_assembly_trimmed_illumina_reads.sh** aligns the Wengan Assembly (trimmed Illumina read input) to the raw Illumina reads.
**samtools_convert_index_pafricana_wengan_assembly_trimmed_illumina_reads.sh** converts the resulting SAM alignment files to BAM format, then sorts and indexes both BAM files.
**pilon_pafricana_wengan_assembly_trimmed_illumina_reads.sh** runs Pilon error correction program on Wengan Assembly (trimmed Illumina read input).

**P. africana Wengan Assembly (trimmed Illumina read input & Pilon polishing)**

    /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pilon/pilon_pafricana_wengan_assembly_trimmed_illumina_reads/pafricana_wengan_assembly_trimmed_illumina_reads.fasta
      
      Genome Size: 465653078
      # of Contigs: 10516
      N50: 119028
      BUSCO:
          Viridiplantae: C:96.4%[S:77.6%,D:18.8%],F:1.6%,M:2.0%,n:425
          Embryophyta: C:86.3%[S:70.8%,D:15.5%],F:2.0%,M:11.7%,n:1614

## Pilon on Masurca Hybrid Assembly

**bowtie2_index_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP.sh** indexes Masurca Hybrid Assembly.
**bowtie2_align_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP.sh** aligns the Masurca Hybrid Assembly to the raw Illumina reads.
**samtools_convert_index_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP_alignment.sh** converts the resulting SAM alignment files to BAM format, then sorts and indexes both BAM files.
**pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP.sh** runs Pilon error correction program on Masurca Hybrid Assembly.

**P. africana Masurca Hybrid Assembly (Pilon polishing)**

    /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pilon/pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina/pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_DP.fasta
      
      Genome Size: 507,096,076
      # of Contigs: 3,590
      N50: 378,429
      BUSCO:
          Viridiplantae: C:96.4%[S:80.9%,D:15.5%],F:1.2%,M:2.4%,n:425
          Embryophyta: C:86.1%[S:71.4%,D:14.7%],F:2.0%,M:11.9%,n:1614

# 4. Polished Genome Assembly Refinement
## Flye Assembly
   1. Contigs less than 3kb in length were removed from the assembly using awk command detailed in **awk_remove_3kb_contigs**
   1. The genome assembly was analyzed with centrifuge using a human, archaea, bacteria, and viral genomic index to determine contaminant contigs in the assembly. Afterwards the contaminant contigs were removed from the assembly using a biopython script.
      1. **centrifuge_pafricana.sh** runs centrifuge on the genome assembly with min-hit-len 50
      1. **remove_contaminated_contigs_pafricana_initial_flye_assembly.py** removes contaminant contigs from the genome assembly based on contig ids from the centrifuge classification report.
   1. Purge haplotigs was run on the genome assembly to identify syntenic contigs.
      1. **minmap_alignment_physcomitrellopsis_africana_polished_3kb_rmvcontam.sh** aligns the most recent polished assembly to the basecalled reads.
      1. **pafricana_purgehap.sh** runs purge haplotigs on the polished assembly in three steps.
      
**P.africana Polished Flye Assembly (Contam & <3Kb scaffolds filtered)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/polished_assembly/physcomitrellopsis_africana_polished_3kb_rmvcontam_assembly.fasta

      Genome Size: 444358046
      # of Contigs: 7712
      N50: 130312
      BUSCO:
          Viridiplantae: C:85.1%[S:77.6%,D:7.5%],F:6.1%,M:8.8%,n:425
          Embryophyta: C:67.4%[S:62.0%,D:5.4%],F:5.9%,M:26.7%,n:1614

**P. africana Polished Flye Assembly (Contam, <3kb scaffolds filtered, & purgehaplotigs)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/polished_assembly/physcomitrellopsis_africana_polished_3kb_rmvcontam_purgehap_assembly.fasta

      Genome Size: 423566072
      # of Contigs: 6038
      N50: 138455
      BUSCO:
          Viridiplantae: C:86.1%[S:78.8%,D:7.3%],F:5.4%,M:8.5%,n:425
          Embryophyta: C:67.2%[S:61.8%,D:5.4%],F:5.6%,M:27.2%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Flye Assembly (Rmv Contam Input)
   1. Purge Haplotigs was run on the polished rmv contam genome assembly to identify and remove syntenic contigs.
      1. **minmap_alignment_polished_pafricana_flye_assembly_rmv_contam_input.sh** aligns the polished rmv input contam flye assembly to the basecalled reads.
      1. **pafricana_purgehap_rmv_input_contam.sh** runs purge haplotigs on the polished rmv input contam flye assembly.
   1. Purge-dups was run on the post-purgehap polished rmv input contam flye assembly to further reduce the duplication of the assembly.
      1. **run_purge_dups.sh** runs purge-dups with information from **config_pafricana_flye_assembly_rmv_input_contam_post_purgehap.json**. **pb.fofn** contains the path to the long-read input data.

**P. africana Polished Flye Assembly (rmv contam input reads & purgehap)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_haplotigs/purge_haplotigs_rmv_input_contam_low_midpoint_55/polished_pafricana_flye_assembly_rmv_input_contam_reads_purgehap_low_mid.fasta

      Genome Size: 531269006
      # of Contigs: 3656
      N50: 395401
      BUSCO:
          Viridiplantae: C:88.2%[S:78.8%,D:9.4%],F:5.4%,M:6.4%,n:425
          Embryophyta: C:67.8%[S:61.8%,D:6.0%],F:5.2%,M:27.0%,n:1614

**P. africana Polished Flye Assembly (rmv contam input reads, post-purgehap, purgedup)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_dups/polished_pafricana_flye_assembly_rmv_input_contam_reads_purgehap_low_mid_55/seqs/polished_pafricana_flye_assembly_rmv_input_contam_reads_purgehap_low_mid.purged.fa

      Genome Size: 516772002
      # of Contigs: 2681
      N50: 402952
      BUSCO:
          Viridiplantae: C:87.3%[S:78.6%,D:8.7%],F:5.9%,M:6.8%,n:425
          Embryophyta: C:67.8%[S:61.9%,D:5.9%],F:5.2%,M:27.0%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Flye Assembly (rmv contam input reads, 3 additional polishing runs, & Medaka polishing)
   1. Purge-dups was run on the medaka error-corrected rmv input contam & 3 additional polishing runs flye assembly to reduce duplication of assembly.
      1. **run_purge_dups_medaka_flye_assembly_rmv_contam_input_rerun_3_polishing_runs_rerun_r941_prom_high_g303.sh** runs purge-dups with information from **config_medaka_flye_assembly_rmv_contam_input_rerun_3_polishing_runs_rerun_r941_prom_high_g303.json**. **pb.fofn** contains the path to the long-read input data.

**P. africana Flye Assembly (rmv contam input reads, 3 additional polishing runs, Medaka polishing, & purgedup)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_haplotigs/purge_haplotigs_rmv_input_contam_low_midpoint_55/polished_pafricana_flye_assembly_rmv_input_contam_reads_purgehap_low_mid.fasta

      Genome Size: 528022983
      # of Contigs: 2256
      N50: 604625
      BUSCO:
          Viridiplantae: C:90.8%[S:80.7%,D:10.1%],F:2.8%,M:6.4%,n:425
          Embryophyta: C:72.0%[S:64.9%,D:7.1%],F:3.8%,M:24.2%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Wengan Assembly (Pilon polishing)

1. Purge-dups was run on the Pilon-corrected Wengan Assembly to reduce duplication of assembly.
   1. **purge_dups_pilon_pafricana_wengan_assembly.sh** runs purge-dups with information from **config_pilon_pafricana_wengan_assembly.json**. **pb.fofn** contains the path to the long-read data, and **10x.fofn** contains the path to the raw Illumina reads.

**P. africana Wengan Assembly (Pilon polishing & purge-dups)**

     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_dups/purge_dups_pilon_pafricana_wengan_assembly/pafricana_wengan_assembly_ispb_1/seqs/pafricana_wengan_assembly.purged.fa

      Genome Size: 450162637
      # of Contigs: 9406
      N50: 140730
      BUSCO:
          Viridiplantae: C:96.2%[S:80.2%,D:16.0%],F:1.6%,M:2.2%,n:425
          Embryophyta: C:86.1%[S:71.7%,D:14.4%],F:2.0%,M:11.9%,n:1614

## Masurca Hybrid Assembly (Pilon polishing)

1. Purge Haplotigs was run on the Pilon-corrected Masurca Hybrid assembly to reduce duplication of assembly
   1. **minimap2_alignment_pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.sh** aligns the Masurca Hybrid Assembly (Pilon polishing) to input Nanopore long-read data and indexes resulting BAM alignment file using Samtools
   1. **purge_haplotigs_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.sh** runs the Purge Haplotigs pipeline on the Masurca Hybrid Assembly (Pilon polishing) in three steps. **pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.reads.sorted.bam.histogram.png** is a read-depth histogram generated by the first step that was used to select low cutoff, midpoint, and high cutoff values in second step
   
**P. africana Masurca Hybrid Assembly (Pilon polishing & purge-haps)**

     /core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_haplotigs/purge_haps_pilon_masurca/purgehap_run9/curated.fasta

      Genome Size: 502,343,981
      # of Contigs: 3,237
      N50: 382,253
      BUSCO:
          Viridiplantae: C:96.4%[S:80.9%,D:15.5%],F:1.2%,M:2.4%,n:425
          Embryophyta: C:86.1%[S:71.4%,D:14.7%],F:2.0%,M:11.9%,n:1614

## HiC Scaffolding (Unsuccessful)
HiC scaffolding was used to orient the Masurca Hybrid Assembly into chromosome-length scaffolds.  

### Raw HiC Read:
1. **hic_reads_align_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.sh** indexes and aligns the Masurca Hybrid Assembly.
2. **juicer_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.sh** runs Juicer in 3 steps
      1. Generate site positions in **pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_Sau3AI.txt**
      2. Covert **pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_Sau3AI.txt** to **pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.chrom.sizes**
      3. Run Juicer to generate **merged_nodups.txt** which is required for the 3ddna pipeline
3. **3ddna_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.sh** runs the 3ddna pipeline using the **merged_nodups.txt** file generated from Juicer. Sript contains commands for all runs attempted
4. Download **.final.hic** and **.final.assembly** files and visualize HiC map with Juicebox

### Rmv Contam HiC Read:
1. **hic_rmv_contam_reads_align_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.sh** indexes and aligns the Masurca Hybrid Assembly.
2. **juicer_hic_rmv_contam_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.sh** runs Juicer in 3 steps
      1. Generate site positions in **hic_rmv_contam_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_Sau3AI.txt**
      2. Covert **hic_rmv_contam_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_Sau3AI.txt** to **hic_rmv_contam_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.chrom.sizes**
      3. Run Juicer to generate **merged_nodups.txt** which is required for the 3ddna pipeline
3. **3ddna_hic_rmv_contam_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina.sh** runs the 3ddna pipeline using the **merged_nodups.txt** file generated from Juicer. Sript contains commands for all runs attempted
4. Download **.final.hic** and **.final.assembly** files and visualize HiC map with Juicebox

### 3ddna Raw HiC Read Map Output
1. Run 1
      - --editor-repeat-coverage 4
![alt text](https://github.com/moss-genome/physcomitrellopsis_africana_genome_assembly/blob/master/3ddna_raw_hic_read_run1.png "Raw HiC Read Run 1")
2. Run 2
      - Default Parameters
![alt text](https://github.com/moss-genome/physcomitrellopsis_africana_genome_assembly/blob/master/3ddna_raw_hic_read_run2.png "Raw HiC Read Run 2")
3. Run 3
      - --splitter-coarse-resolution 50000
![alt text](https://github.com/moss-genome/physcomitrellopsis_africana_genome_assembly/blob/master/3ddna_raw_hic_read_run3.png "Raw HiC Read Run 3")

### 3ddna Rmv Contam HiC Read Map Output
1. Run 1
      - --editor-repeat-coverage 1
![alt text](https://github.com/moss-genome/physcomitrellopsis_africana_genome_assembly/blob/master/3ddna_rmv_contam_read_run1.png "Rmv Contam Read Run 1")
2. Run 2
      - --editor-repeat-coverage 4
![alt text](https://github.com/moss-genome/physcomitrellopsis_africana_genome_assembly/blob/master/3ddna_rmv_contam_read_run2.png "Rmv Contam Read Run 2")
3. Run 3
      - --editor-repeat-coverage 4 
      - --splitter-coarse-resolution 250000
![alt text](https://github.com/moss-genome/physcomitrellopsis_africana_genome_assembly/blob/master/3ddna_rmv_contam_read_run3.png "Rmv Contam Read Run 3")
      
      
# 5. Genome Annotation  

## Sickle Trimming Input Reads
1. **sickle_pafricana_RNA_reads.sh** trims P. africana RNA reads
```
**Trimming Summary:**  
Total input FastQ records: 73165112 (36582556 pairs)  
FastQ paired records kept: 60583696 (30291848 pairs)  
FastQ paired records discarded: 2775514 (1387757 pairs)  

Location:  
/core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/annotation/reads/trimmed_CL100118899_L01_573_1.fastq  
/core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/annotation/reads/trimmed_CL100118899_L01_573_2.fastq  
```
## Repeat Modeler
1. **create_db_purgehap_pilon_masurca.sh** creates Repeat Modeler database of Masurca Hybrid Assembly (Pilon polishing & purge-haps)
1. **repeat_modeler_pafricana_purgehap_pilon_masurca.sh** runs Repeat Modeler with LTR Structural Analysis enabled
```
Output:
Masurca Hybrid Assembly (Pilon polishing & purge-haps)
Location:
/core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/annotation/repeat_modeler/RM_2109530.SatJun250415192022/consensi.fa

Number of Sequences: 580
```
## Repeat Masker  
1. **repeat_masker_purgehap_pilon_masurca.sh** runs Repeat Masker on Masurca Hybrid Assembly (Pilon polishing & purge-haps) with repeat library generated in previous step

```
Output: Masked Masurca Hybrid Assembly (Pilon polishing & purge-haps)  
Location:
/core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_haplotigs/purge_haps_pilon_masurca/purgehap_run9/curated.fasta.masked

Masked Genome Stats:  
bases masked:  252,254,513 bp (50.22 %)  
Detailed stats in **pilon_purgehap_masurca_hybrid_assembly.tbl**
```

## BRAKER & gFACs
Run seperate BRAKER runs with RNA alignment & protein evidence, and gFACs with basic unique genes filter

1. **hisat2_index.sh** indexes the Masurca Hybrid Assembly (Pilon polishing & purge-haps)
1. **hisat2_align.sh** aligns the Masurca Hybrid Assembly (Pilon polishing & purge-haps) to RNA-seq transcriptome reads
1. **braker_pafricana_purgehap_pilon_masurca_rna_only.sh** runs BRAKER with RNA alignment evidence
1. **gfacs_pafricana_purgehap_pilon_masurca_rna_only_rerun.sh** runs gFACs with unique genes filter enabled to generate refined output for BRAKER RNA alignment evidence run
1. **braker_pafricana_purgehap_pilon_masurca_protein.sh** runs BRAKER with protein evidence

```
BRAKER RNA-seq Alignment Output:  
/core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/annotation/braker/braker_rna_only/  

Total Protein Sequences: 64,020  
BUSCO: 
Viridiplantae: C:95.8%[S:72.5%,D:23.3%],F:2.4%,M:1.8%,n:425  
Embryophyta: C:84.0%[S:61.9%,D:22.1%],F:3.8%,M:12.2%,n:1614  
```
```
gFACs Unique Gene Filter on BRAKER RNA-Seq Alignment Output:
/core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/annotation/gfacs/gfacs_uniquegenes_filter_braker_rna_only_purgehap_pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina/gfacs_o/

STATS:
Number of genes:	60917
Number of monoexonic genes:	20885
Number of multiexonic genes:	40032

Viridiplantae: C:95.8%[S:80.5%,D:15.3%],F:2.4%,M:1.8%,n:425
Embryophyta: C:83.9%[S:69.0%,D:14.9%],F:3.8%,M:12.3%,n:1614
```
```
BRAKER Protein Evidence Output:  
/core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/annotation/braker/braker_protein/  
Total Protein Sequences: 37,822  
BUSCO:  
Viridiplantae: C:46.1%[S:30.1%,D:16.0%],F:5.6%,M:48.3%,n:425  
Embryophyta: C:22.6%[S:15.3%,D:7.3%],F:2.5%,M:74.9%,n:1614  
```



## TSEBRA
Run TSEBRA to select transcripts from BRAKER RNA alignment & BRAKER protein evidence runs to create refined dataset.  

**tsebra.sh** runs TSEBRA with BRAKER RNA alignment & protein evidence. **gfacs_tsebra.sh** runs gFACs with unique gene filter enabled on the TSEBRA output gtf file.  
```
TSEBRA Output:
/core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/annotation/tsebra/tsebra_braker_purgehap_pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina/gfacs_o/genes.fasta.faa  

gFACs Stats:
Number of genes:	46525  
Number of monoexonic genes:	23919  
Number of multiexonic genes:	22606  

BUSCO:  
Viridiplantae: C:91.3%[S:76.2%,D:15.1%],F:1.9%,M:6.8%,n:425
Embryophyta: C:79.0%[S:65.4%,D:13.6%],F:3.5%,M:17.5%,n:1614
```
## Interproscan  
Reduce number of monoexonic genes in annotation (Ran seperately for TSEBRA & BRAKER RNA-only Protein Sets)  

* **gfacs_isolate_mono.sh** isolates and filters monoexonic genes that are incomplete or have no start & stop codons.  
* **gfacs_isolate_multi.sh** isolates multiexonic gene output.  
* **interproscan.sh** aligns the monoexonic genes to the pfam database and keeps only unique genes that align to the database.  
**gfacs_combined_mono_interproscan_filter_multi.sh** combines gene tables from interproscan filtered monoexonic genes and isolated multiexonic gene output, then generates a gFACs run using the combined gene table.  

```
Interproscan Filtering TSEBRA BRAKER Output:  
/core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/annotation/interproscan/interproscan_tsebra_braker_purgehap_pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina/gfacs_o/genes.fasta.faa  
Number of genes: 37201  
Number of monoexonic genes: 14595  
Number of multiexonic genes: 22606  

BUSCO:  
Viridiplantae: C:90.3%[S:75.5%,D:14.8%],F:1.9%,M:7.8%,n:425  
Embryophyta: C:78.4%[S:65.0%,D:13.4%],F:3.2%,M:18.4%,n:1614  
```

```
Interproscan Filtering BRAKER RNA-only Output:  
/core/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/annotation/interproscan/interproscan_braker_rna_only_purgehap_pilon_pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_rerun/gfacs_o/genes.fasta.faa  

STATS:
Number of genes: 52728
Number of monoexonic genes: 12696
Number of multiexonic genes: 40032

BUSCO:  
Viridiplantae: C:94.9%[S:79.8%,D:15.1%],F:2.4%,M:2.7%,n:425  
Embryophyta: C:83.4%[S:68.7%,D:14.7%],F:3.7%,M:12.9%,n:1614  
```
## OrthoFinder
Performed OrthoFinder analysis on Interproscan-filtered BRAKER RNA-only gene set alongside Physcomitrium patens protein-coded gene set acquired from RefSeq & UCONN Funaria hygrometrica protein sets acquired from Funaria manuscript: https://www.biorxiv.org/content/10.1101/2022.05.17.492078v1.full

**orthofinder.sh** runs OrthoFinder with **fasta** directory containing input protein data.  

### Overall Statistics  
```
Number of species	3
Number of genes	137165
Number of genes in orthogroups	111541
Number of unassigned genes	25624
Percentage of genes in orthogroups	81.3
Percentage of unassigned genes	18.7
Number of orthogroups	20776
Number of species-specific orthogroups	4544
Number of genes in species-specific orthogroups	22945
Percentage of genes in species-specific orthogroups	16.7
Mean orthogroup size	5.4
Median orthogroup size	4.0
G50 (assigned genes)	6
G50 (all genes)	5
O50 (assigned genes)	5028
O50 (all genes)	7288
Number of orthogroups with all species present	13538
```










