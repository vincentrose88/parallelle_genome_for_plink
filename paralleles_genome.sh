let i=0 
let a=9
let j=0

while [ $i -le $a ]
do
    while [ $j -le $a ]
    do
	qsub start_par_genome.sge $i $j
	let j=$j+1
    done
    let i=$i+1
    let j=$i
done
