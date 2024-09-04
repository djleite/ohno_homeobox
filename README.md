# ohno_homeobox
homeobox annotations for chelicerates with different classes of duplications

# 
- anno/ - annotation of genes with likely homeobox genes
- fastas/ - fastas single isoform
- gene_lists/ - lists of gene classes from ohnologs and mcscanx
- hits/ - diamond blast hits
- all_anno.txt - all annotations matrix for naming
- all_hbox_HD.dmnd - diamond db
- all_hbox_HD.fa - HDs from maddas paper
- dataframe.csv
- dataframe_melted.csv
- get_anno.py - get the annotations from hits
- get_data.sh - get the data from all the ohnolog and mcscanx run (change paths)
- get_hits_from_main.py - script to get the class annotation from all_anno.txt for each hit
- make_df.py - make df for plotting
- run_blast.sh - wrapper to run it all
