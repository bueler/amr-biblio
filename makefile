all: ab.pdf

ab.pdf: ab.tex ab.aux ab.bbl
	pdflatex ab
	pdflatex ab

ab.aux: ab.tex
	pdflatex ab
	bibtex ab

ab.bbl: ab.aux ab.bib
	bibtex ab

.PHONY: clean

clean:
	@rm -f *~ *.out *.aux *.log *.blg *.snm *.toc *.nav *.vrb *.bbl *.synctex.gz *.thm *.dvi
	@rm -rf genfigs/*.pdf genfigs/__pycache__/
	@rm -rf publish*
