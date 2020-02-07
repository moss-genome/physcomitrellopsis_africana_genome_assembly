import sys
from Bio import SeqIO
fastq_file = "/labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/5074_test_LSK109_30JAN19-reads/5074_test_LSK109_30JAN19-reads-pass.fastq"
remove_file = "contaminated_pafricana_promethion_reads.txt"
result_file = "physcomitrellopsis_africana_promethion_fastq_reads-pass_rmv_contam.fastq"
with open(result_file, "w") as f, open(remove_file, "r") as r:
	removed_reads_list = []
	for line in r:
		l = line.split()
		removed_reads_list.append(l[0])
	for seq in SeqIO.parse(fastq_file, 'fastq'):
		if seq.id not in removed_reads_list:
			SeqIO.write(seq, f, "fastq")

