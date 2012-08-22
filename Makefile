# Makefile originally from the 'Mastering Node' book written TJ Holowaychuk
# https://github.com/visionmedia/masteringnode
#

PDF_FLAGS = --fontsize 9.0 \
		--linkstyle plain \
		--linkcolor blue \
		--embedfonts \
		--footer "c 1" \
		--no-toc

MD = book.md \
	toc.md \
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

book.html:
	@echo "\n... generating $@"
	pandoc -s --strict -o book.html -c ./book.css $(MD)

book.docx:
	@echo "\n... generating $@"
	pandoc -o book.docx -c ./book.css $(MD)

book.pdf:
	@echo "\n... generating $@"
	pandoc -s --strict -o book.pdf  $(MD)

website: book.html public
	@echo "\n... copying items into ./public"
	cp book.html public/index.html
	cp book.pdf public/book.pdf
	cp -r fig public/fig

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
	rm -f book.html
	rm -rf public

clear:

.PHONY: view clean regenerate
