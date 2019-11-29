all:	resume.pdf cover.pdf

clean:
	rm -f *.ps *.pdf

%.pdf:	%.ms
	groff -ms -e -K utf8 -T pdf $< > luchian-mihai-cv-grof.pdf

.PHONY: clean
