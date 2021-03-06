# Rolf Niepraschk, 2020-05-20, Rolf.Niepraschk@gmx.de

.SUFFIXES : .dtx .ins .tex .ltx .dvi .ps .pdf .eps

MAIN = GermanCityMap
LATEX = pdflatex

all : $(MAIN).pdf

$(MAIN).pdf : $(MAIN).tex cities.tex outlines.tex
	$(LATEX) --shell-escape $<

clean :
	$(RM) *.aux *.log maptiles.texpy

veryclean : clean
	$(RM) $(MAIN).pdf 
