.PHONY: all
all:
	test -d ./build || mkdir build
	(test -d ./build && cd src/figures && pdflatex -halt-on-error -output-directory=. *.tex) || true
	cd src && pdflatex -halt-on-error -output-directory=../build/ summary.tex && pdflatex -output-directory=../build/ summary.tex 

.PHONY: clean
clean:
	rm -rf build