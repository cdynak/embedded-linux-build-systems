LATEX = embedded-linux-build-systems
PDF = zathura

$(LATEX).pdf: $(LATEX).tex $(LATEX).bib
	aspell --lang=en_US --mode=tex check $(LATEX).tex
	pdflatex $(LATEX).tex
	bibtex $(LATEX).aux
	pdflatex $(LATEX).tex
	pdflatex $(LATEX).tex
#	$(PDF) $(LATEX).pdf &

clean:
	rm -f $(LATEX).tex.bak $(LATEX).aux $(LATEX).bbl $(LATEX).blg $(LATEX).log $(LATEX).out $(LATEX).toc $(LATEX).lot $(LATEX).lof

clean-all:
	rm -f *.pdf *.bak *.aux *.bbl *.blg *.log *.out *.toc *.lot *.lof
