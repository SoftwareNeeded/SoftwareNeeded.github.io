TEXTS = $(wildcard *.text)
PAGES = $(patsubst %.text, %.html, $(TEXTS))

%.html: %.text  Makefile page.theme
	theme $<

all: $(PAGES)


.PHONY:
clean:
	rm -f $(PAGES)
