#all:
#	pdflatex -shell-escape ./pp_final.tex 
#	pdflatex -shell-escape ./pp_final.tex
#	bibtex ./pp_final
#	pdflatex ./pp_final.tex
#	grep --color=auto  "LaTeX Warning" plannedprotest_IAAI.log || true
all:
	pdflatex -shell-escape ./plannedprotest_AIMag.tex 
	pdflatex -shell-escape ./plannedprotest_AIMag.tex
	#bibtex ./plannedprotest_AIMag
	pdflatex ./plannedprotest_AIMag
	grep --color=auto  "LaTeX Warning" plannedprotest_IAAI.log || true




clean:
	rm *.aux, *.blg, *.bbl, *.log, *.pdf, *.toc. *.snm, *.out, *.nav


