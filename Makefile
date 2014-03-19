FIL=thesis
OS=$(shell uname)
.PHONY : all pdf clean open master sub

#Leaves all generated output for debugging
all: sub master

#Generates pdf for master and cleans all other output
pdf: master clean

#Generates pdf for master and moves said pdf to output folder
master:
	mkdir -p output
	mkdir -p grafikk

	pdflatex ${FIL}
	bibtex ${FIL}
	pdflatex ${FIL}
	pdflatex ${FIL}
	
	mv ${FIL}.pdf output/

#Generates secondary pdf's and moves them to output folder
sub:
	rm grafikk/* || echo ""
	
	mkdir -p output
	mkdir -p grafikk

	make -C Models_and_secondary_documents/

clean:
	rm -rf *.aux */*.aux || echo ""
	rm -rf *.blg *.bbl *.toc *.log *.out *.lof || echo ""

open: all clean
ifeq ($(OS),Darwin)
	open output/${FIL}.pdf
else
	xdg-open output/${FIL}.pdf
endif
