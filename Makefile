all:
	pdflatex -shell-escape ./plannedprotest_IAAI.tex 
	pdflatex -shell-escape ./plannedprotest_IAAI.tex 
	bibtex ./plannedprotest_IAAI.tex
	pdflatex ./plannedprotest_IAAI.tex
	#grep --color=auto  "LaTeX Warning" $(basename $<).log || true
clean:
	rm *.aux, *.blg, *.bbl, *.log, *.pdf, *.toc. *.snm, *.out, *.nav
