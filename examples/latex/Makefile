LATEXMK=docker run --rm -v `pwd`:/docs --entrypoint latexmk ghcr.io/hg-jt/pandoc-texlive:main
LATEXMKOPT=-xelatex

.PHONY: build clean help
.DEFAULT_GOAL := help

build: simpledoc.pdf simpledoc-with-code.pdf  ## build PDFs

simpledoc.pdf: simpledoc.tex
	$(LATEXMK) $(LATEXMKOPT) simpledoc.tex

simpledoc-with-code.pdf: simpledoc-with-code.tex Makefile
	$(LATEXMK) $(LATEXMKOPT) simpledoc-with-code.tex

clean:  ## clean up all build artifacts
	$(LATEXMK) -C simpledoc
	$(LATEXMK) -C simpledoc-with-code

help:  ## print usage information
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
