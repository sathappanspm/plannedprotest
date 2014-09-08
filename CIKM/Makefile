NAME=$(notdir $(abspath .))
RUBBER=
# $(shell which rubber)
PDFLATEXARGS=-shell-escape
#$(PWD))

all: $(NAME).pdf

DEPENDENCIES=$(wildcard sections/*.tex)
DEPENDENCIES+=references.bib

ifneq "$(RUBBER)" ""

$(NAME).pdf: $(NAME).tex $(DEPENDENCIES)
	$(RUBBER) --pdf $<
	$(RUBBER)-info $<
clean: 
	$(RUBBER) --pdf --clean $(NAME).tex

else

$(NAME).pdf: $(NAME).tex $(DEPENDENCIES)
	pdflatex $(PDFLATEXARGS) $<
	bibtex  $(basename $<)
	pdflatex $(PDFLATEXARGS) $< 
	pdflatex $(PDFLATEXARGS) $<
	grep --color=auto  "LaTeX Warning" $(basename $<).log || true

spellcheck: $(NAME).tex $(DEPENDENCIES)
	@TERM=xterm-color 
	@for file in $^; do \
		echo Spellchecking $$file ; \
		aspell --local-data-dir=./ --home-dir=./ -t check $$file ; \
	done


clean:
	rm -rf ${NAME}.aux ${NAME}.bbl ${NAME}.blg ${NAME}.log ${NAME}.pdf ${NAME}.toc ${NAME}.snm ${NAME}.out ${NAME}.nav tags

endif
.PHONY: all clean
