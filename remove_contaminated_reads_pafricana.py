import sys
from Bio import SeqIO
fasta_file = "physcomitrellopsis_africana_polished_3kb_assembly.fasta"
remove_file = "pafricana_polished_3kb_assembly_contaminant_contigids.txt"
result_file = "physcomitrellopsis_africana_polished_3kb_rmvcontam_assembly.fasta"
with open(result_file, "w") as f, open(remove_file, "r") as r:
   remove = r.read().split("\r")
   remove1 = remove[0].split("\n")
   for seq in SeqIO.parse(fasta_file, 'fasta'):
       if seq.id not in remove1:
           SeqIO.write(seq, f, "fasta")
