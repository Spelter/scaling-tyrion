FILE=document
OUTPUTNAME=supspec
PICTURES=$(shell find . -name "*.png")
PICTURES+=$(shell find . -name "*.PNG")
PICTURES+=$(shell find . -name "*.jpg")
PICTURES+=$(shell find . -name "*.JPG")
PICTURES+=$(shell find . -name "*.jpeg")
PICTURES+=$(shell find . -name "*.JPEG")
PICTURES+=$(shell find . -name "*.gif")
PICTURES+=$(shell find . -name "*.GIF")
OS=$(shell uname)
.PHONY : all pdf clean open move copypict

all: copypict
	pdflatex ${FILE}
	#bibtex ${FILE}
	pdflatex ${FILE}
	pdflatex ${FILE}

pdf: all clean

copypict:
	$(foreach pict, ${PICTURES}, (cp ${pict} ../../grafikk/) &&) :

move: pdf
	mv ${FILE}.pdf ../../output/${OUTPUTNAME}.pdf

clean:
	rm -rf *.aux */*.aux
	rm -rf *.blg *.bbl *.toc *.log *.out *.lof


open: pdf
ifeq ($(OS),Darwin)
	open ${FILE}.pdf
else
	xdg-open ${FILE}.pdf
endif
