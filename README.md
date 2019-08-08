### Physcomitrellopsis africana Genome Assembly
Moss Genome Assembly Spreadsheet: https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit?usp=sharing

1. Nanopore Sequencing.

     Physcomitrellopsis africana tissue sequenced using Nanopore PromethION technology.
     Raw sequencing run data located at:

       /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/5074_test_LSK109_30JAN19-fast5_pass/

     Basecalled sequencing reads located at:

       /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/5074_test_LSK109_30JAN19-reads/

1. Flye Assembly.

     Draft genome assembly created using Flye genome assembly program.
     
     **flye_assembly_moss_30JAN19_5074.sh** script runs Flye assembly program with basecalled sequencing reads as input.

     Path to Initial Flye Assembly:

       /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/

1. Nanopolish Genome Assembly
   1. Basecalled fastq reads are linked to signal-level nanopore raw fast5 data using nanopolish index.
      1. **nanopolish_index_physcomitrellopsis_africana.sh** indexes the basecalled reads.
   1. Basecalled reads are aligned to the initial flye assembly using minimap2, and the bam alignment file is sorted and indexed using samtools.
      1. **minmap_alignment_physcomitrellopsis_africana.sh** script performs minimap2 alignment of reads to assembly and samtools processing of bam alignment file.
   1. Polished genome assembly is created with nanopolish.
      1. **nanopolish_physcomitrellopsis_africana.sh** generates polished assembly contigs in 50kb parts in vcf format
   1. Final polished genome assembly is generated by compiling all polished contig files using nanopolish vcf2fasta
      1. **nanopolish_vcf_to_fasta.sh** script converts polished contig files into a polished genome assembly

1. Polished Genome Assembly Refinement
   1. Contigs less than 3kb in length were removed from the assembly using an awk command.
   1. The genome assembly was analyzed with centrifuge using a human, archaea, bacteria, and viral genomic index to determine contaminant contigs in the assembly. Afterwards the contaminant contigs were removed from the assembly using a biopython script.
      1. **centrifuge_pafricana.sh runs** centrifuge on the genome assembly with min-hit-len 50 to correct for false-positives in the nanopore long-read assembly
      1. **remove_contaminated_reads_pafricana.py** removes contaminant contigs from the genome assembly based on contig ids from the centrifuge classification report.
   1. Purge haplotigs was run on the genome assembly to identify syntenic contigs.
      1. **minmap_alignment_physcomitrellopsis_africana_polished_3kb_rmvcontam.sh** aligns the most recent polished assembly to the basecalled reads.
      1. **pafricana_purgehap.sh** runs purge haplotigs on the polished assembly in three steps.

Path to Final Polished Genome Assembly:

    /labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/polished_assembly/physcomitrellopsis_africana_3kb_rmvcontam_purgehap_assembly.fasta
