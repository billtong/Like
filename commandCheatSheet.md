- compile and test scanner and parser
```sh
cd parser/
make
ssltrace "ptc -o1 -t1 -L parser testSuitePhase1/test.pt" parser/scan.def -e
ssltrace "ptc -o2 -t2 -L parser testSuitePhase2/test.pt" parser/parser.def -e
```
