draft:			
	soelim index.ms > all.soelim
	preconv -eutf8 all.soelim > all.preconv
	groff -tep -ms -Tps -dpaper=a5l -P-pa5 -P-l -Kutf8 all.preconv > out.ps
	ps2pdf out.ps > out.pdf
	rm *.ps

docs:
	soelim index.ms > all.soelim
	preconv -eutf8 all.soelim > all.preconv
	pdfroff -tep -mspdf -Tps -dpaper=a5l -P-pa5 -P-l -Kutf8 --no-toc-relocation all.preconv > out.pdf
