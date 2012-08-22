# Makefile originally from the 'Mastering Node' book written TJ Holowaychuk
# https://github.com/visionmedia/masteringnode
#

PDF_FLAGS = --fontsize 9.0 \
		--linkstyle plain \
		--linkcolor blue \
		--embedfonts \
		--footer "c 1" \
		--no-toc

MD = toc.md \
    EndPoint/ValidEndPoint.md \
    LandingPage/HTML5.md \
    LandingPage/DiscoveryDoc.md \
    OpenSearch/DiscoveryDoc.md\
    OpenSearch/HTMLSearch.md \
    OpenSearch/ATOMSearch.md \
    Discovery/GoogleDiscovery.md \
    Discovery/GeoServices.md \
    Discovery/Atompub.md \
    Discovery/None.md \
    UniformInterface/Verbs.md \
    UniformInterface/Idempotence.md \
    ContentNegotiation/Headers.md \
    ContentNegotiation/Suffixes.md \
	ContentNegotiation/MimeTypes.md \
	Atom/Atom.md \
	Atom/Extend.md \
	Atom/GData2.0.md \
	Caching/Caching.md \
	Caching/GData2.0.md 

HTML = $(MD:.md=.html)

all: book.html book.pdf book.md website clear

regenerate: clean all
	git commit -a -m '[dist] Regenerated handbook' && echo done

publish: clean all
	git commit -am '[dist] Regenerated handbook'
	git push origin master
	./bin/deploy.sh

htmlbook.pdf: $(HTML)
	@echo "\n... generating $@"
	htmldoc --webpage -f $@ $(PDF_FLAGS) $(HTML)

book.md: $(HTML)
	@echo "\n... generating $@"
	cat $(MD) > book.md

book.html: $(HTML)
	@echo "\n... generating $@"
	@echo $(HTML)
	cat pages/head.html pages/title.html $(HTML) pages/tail.html > book.html

website: book.html public
	@echo "\n... copying items into ./public"
	cp book.html public/index.html
	cp book.pdf public/book.pdf
	cp -r fig public/fig

%.html: %.md
	ronn --pipe --fragment $< > $@

book.pdf:
	@echo "\n... generating $@"
	ebook-convert book.html book.pdf
	
book.mobi:
	@echo "\n... generating $@"
	ebook-convert book.html book.mobi --output-profile kindle

book.epub:
	@echo "\n... generating $@"
	ebook-convert book.html book.epub \
		--title "REST Policy Handbook" \
		--no-default-epub-cover \
		--authors "Pat Cappelaere" \
		--language en \
		--cover pages/cover.jpg

view: book.pdf
	open book.pdf

clean:
	rm toc.html
	rm -f API/*.html
	rm -f LandingPage/*.html
	rm -f Atom/*.html
	rm -f Caching/*.html
	rm -f Compression/*.html
	rm -f ContentNegotiation/*.html
	rm -f Discovery/*.html
	rm -f EndPoint/*.html
	rm -f OpenSearch/*.html
	rm -f UniformInterface/*.html
	rm -f book.*
	rm -rf public

clear:

.PHONY: view clean regenerate
