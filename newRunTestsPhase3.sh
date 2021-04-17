counterPass=0
counterMissed=0
counter=0

for i in testSuitePhase3/*.pt; do
	echo "Conducting test on" $i
	outFile=$(echo $i | sed s/pt$/newEoutput/)

	if [[ ! -f $outFile ]]; then
		echo "MISSING the output file" $outFile
		((counterMissed++))
		((counter++))
		echo ""
		continue
	fi

	ssltrace "ptc -o3 -t3 -L lib/pt $i" lib/pt/semantic.def -e | diff $outFile -

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
echo "Missed" $counterMissed "tests"