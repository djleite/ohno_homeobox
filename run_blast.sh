# get HD hits and then extract the gene_lists
rm -r hits
rm -r anno


for i in ECTDAV DYSSIL ARGBRU HYLGRA LATELE PARTEP OEDGIB TRIANT TRICLA ULODIV CARROT TACGIG DERSIL HAELON
do
mkdir -p hits/${i}
diamond blastp --db all_hbox_HD.dmnd -q fastas/${i}.fasta -o hits/${i}/${i}_hits.txt -f 6 -p 60 -e 1e-10
done



for i in ECTDAV DYSSIL ARGBRU HYLGRA LATELE PARTEP OEDGIB TRIANT TRICLA ULODIV CARROT TACGIG DERSIL HAELON

do
printf 'Running: '${i}'\n'

mkdir -p anno/${i}

  for x in _whdis _whpro _whseg _whsin _whtan _wohdis _wohpro _wohseg _wohsin _wohtan
  do
  python get_hits_from_main.py hits/${i}/${i}_hits.txt gene_lists/${i}/${i}${x}.txt > hits/${i}/${i}${x}_hits.txt
  done
    
  for x in _hits _whdis_hits _whpro_hits _whseg_hits _whsin_hits _whtan_hits _wohdis_hits _wohpro_hits _wohseg_hits _wohsin_hits _wohtan_hits
  do
  python get_anno.py all_anno.txt hits/${i}/${i}${x}.txt > anno/${i}/${i}${x/'hits'/'anno'}.txt
  done

done


for i in ECTDAV DYSSIL ARGBRU HYLGRA LATELE PARTEP OEDGIB TRIANT TRICLA ULODIV CARROT TACGIG

do

  for x in _1.5_C
  do
  python get_hits_from_main.py hits/${i}/${i}_hits.txt gene_lists/${i}/${i}${x}.txt > hits/${i}/${i}${x}_hits.txt
  done
    
  for x in _1.5_C_hits
  do
  python get_anno.py all_anno.txt hits/${i}/${i}${x}.txt > anno/${i}/${i}${x/'hits'/'anno'}.txt
  done

done



