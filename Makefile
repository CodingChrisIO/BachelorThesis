OUT := build
FILE := main.tex

.PHONY: pdf clean

pdf: $(OUT)/$(notdir $(basename $(FILE))).pdf

$(OUT)/$(notdir $(basename $(FILE))).pdf: $(FILE) $(OUT)
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -bibtex -output-directory=$(OUT) $(FILE)

$(OUT):
	 mkdir -p $(OUT)

clean:
	latexmk -C -output-directory=$(OUT)

