See pngu.mgh.harvard.edu/~purcell/plink/strat.shtml#cluster for full documentation
Run a plink --freq beforehand on the full dataset.
Run the following awk command to split you data set into chunks of a 100 individuals
gawk '{print $1,$2}' data.fam | split -d -a 3 -l 100 - tmp.list
Modify parallelles_genome.sh script (a= ) to the number of your chunks
Modify start_par_genome.sge to your own datafile.
Run scripts in a sub-folder from where the data-file is. This method creates a lot of qsub_out files (.o,.e,.po,.pe).
