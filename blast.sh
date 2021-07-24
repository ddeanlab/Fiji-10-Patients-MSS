#!/bin/bash

for filename in ~/Kraken/path_to_extracted_reads;
do
~/ncbi_blast/ncbi-blast-2.11.0+/bin/blastn -db ~/ncbi_blast/blastdb/nt -task "blastn" -query "$filename" -out "$filename".txt

done

#After running this script, the BLAST text files will be in the same folder as the reads that were BLASTed. Use the command "mv *.txt name_of_other_folder" to separate out the BLAST text files.
#The next step is to rename the files, as their extension is .fastq.txt when it should be .txt. First install a tool by doing "brew install rename", then do "rename -s ".fastq.txt" ".txt" *"

