PANDOC_IMAGE=ghcr.io/hg-jt/pandoc-texlive:main
PANDOC=@docker run --rm -t -v `pwd`:/docs $(PANDOC_IMAGE)
PANDOCOPT=--template=notes -s --pdf-engine=xelatex --no-highlight --listings

.PHONY: build clean help
.DEFAULT_GOAL := help

build: simpledoc.pdf simpledoc2.pdf simpledoc-with-code.pdf  ## build PDFs

simpledoc.pdf: simpledoc.md
	$(PANDOC) simpledoc.md $(PANDOCOPT) -o simpledoc.pdf

simpledoc2.pdf: simpledoc2.md
	$(PANDOC) simpledoc2.md $(PANDOCOPT) -o simpledoc2.pdf

simpledoc-with-code.pdf: simpledoc-with-code.md
	$(PANDOC) simpledoc-with-code.md $(PANDOCOPT) -o simpledoc-with-code.pdf

clean:  ## clean up all build artifacts
	@rm -f simpledoc*.pdf
	@rm -f simpledoc*.tex

help:  ## print usage information
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
