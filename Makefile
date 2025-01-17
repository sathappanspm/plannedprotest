#all:
#	pdflatex -shell-escape ./pp_final.tex 
#	pdflatex -shell-escape ./pp_final.tex
#	bibtex ./pp_final
#	pdflatex ./pp_final.tex
#	grep --color=auto  "LaTeX Warning" plannedprotest_IAAI.log || true
all:
	pdflatex -shell-escape ./plannedprotest_IAAI.tex 
	pdflatex -shell-escape ./plannedprotest_IAAI.tex
	bibtex ./plannedprotest_IAAI
	pdflatex ./plannedprotest_IAAI.tex
	grep --color=auto  "LaTeX Warning" plannedprotest_IAAI.log || true




clean:
	rm *.aux, *.blg, *.bbl, *.log, *.pdf, *.toc. *.snm, *.out, *.nav


