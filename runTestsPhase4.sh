#!/bin/bash

counterPass=0
counterMissed=0
counter=0

cd testSuitePhase4
for i in *.pt; do
	echo "Conducting test on" $i
	generatedFile=$(echo $i | sed s/pt$/s/)
	outFile=$(echo $i | sed s/pt$/eOutput/)

	if [[ ! -f $outFile ]]; then
		echo "MISSING the output file" $outFile
		((counterMissed++))
		((counter++))
		echo ""
		continue
	fi

	ptc -S -L ../lib/pt $i
	diff $generatedFile $outFile

	#ssltrace "ptc -o4 -t4 -L lib/pt $i" lib/pt/coder.def -e | diff $outFile -


	if [[ $? -ne 0 ]]; then
		echo "FAILED"

	else
		echo "PASSED"
		((counterPass++))
	fi

	echo ""
	((counter++))


done

echo $counterPass "worked out of" $counter
echo "Missing " $counterMissed "tests (read .txt documentation files for these tests)"
