for i in DYSSIL ECTDAV ARGBRU TRIANT TRICLA PARTEP LATELE ULODIV OEDGIB HYLGRA CARROT TACGIG DERSIL HAELON
do

cp /work/WGD/synteny/mcscanx/data/from_braker/for_paper/whomology_1.5/${i}/${i}_dispersed.txt gene_lists/${i}/${i}_whdis.txt
# proximal_file
cp /work/WGD/synteny/mcscanx/data/from_braker/for_paper/whomology_1.5/${i}/${i}_proximal.txt gene_lists/${i}/${i}_whpro.txt
# segmental_file
cp /work/WGD/synteny/mcscanx/data/from_braker/for_paper/whomology_1.5/${i}/${i}_segmental.txt gene_lists/${i}/${i}_whseg.txt
# singleton_file
cp /work/WGD/synteny/mcscanx/data/from_braker/for_paper/whomology_1.5/${i}/${i}_singleton.txt gene_lists/${i}/${i}_whsin.txt
# tandem_file
cp /work/WGD/synteny/mcscanx/data/from_braker/for_paper/whomology_1.5/${i}/${i}_tandem.txt gene_lists/${i}/${i}_whtan.txt
cp /work/WGD/synteny/mcscanx/data/from_braker/for_paper/wohomology_1e-10/${i}/${i}_dispersed.txt gene_lists/${i}/${i}_wohdis.txt
# proximal_file
cp /work/WGD/synteny/mcscanx/data/from_braker/for_paper/wohomology_1e-10/${i}/${i}_proximal.txt gene_lists/${i}/${i}_wohpro.txt
# segmental_file
cp /work/WGD/synteny/mcscanx/data/from_braker/for_paper/wohomology_1e-10/${i}/${i}_segmental.txt gene_lists/${i}/${i}_wohseg.txt
# singleton_file
cp /work/WGD/synteny/mcscanx/data/from_braker/for_paper/wohomology_1e-10/${i}/${i}_singleton.txt gene_lists/${i}/${i}_wohsin.txt
# tandem_file
cp /work/WGD/synteny/mcscanx/data/from_braker/for_paper/wohomology_1e-10/${i}/${i}_tandem.txt gene_lists/${i}/${i}_wohtan.txt
cp /work/WGD/annotations/RNAseq_for_annotations/processed_for_ohnologs/${i}/${i}_prot_t1.fasta fastas/${i}.fasta

done

for i in DYSSIL ECTDAV ARGBRU TRIANT TRICLA PARTEP LATELE ULODIV OEDGIB HYLGRA CARROT TACGIG
do
cp /work/WGD/GO/from_braker/ohno_list/${i}_1.5_C.txt gene_lists/${i}/${i}_1.5_C.txt
done
