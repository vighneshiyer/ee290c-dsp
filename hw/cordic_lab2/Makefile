srcdir  = .

main = cordic_lab2
figs = $(wildcard figs/*)

pdf : $(main).pdf
.PHONY: pdf

%.pdf: %.tex ../common.tex $(figs)
	texfot lualatex -shell-escape $(main).tex

clean :
	rm -rf *.pdf *.aux *.out *.log _minted*
