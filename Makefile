.PHONY: build
build: pdf/chords.pdf img/chords.png

pdf/chords.pdf: chords.txt
	enscript \
		--font=Courier6 \
		--landscape \
		--header="" \
		-p output.ps \
		$<
	ps2pdf output.ps $@
	@rm output.ps

img/chords.png: pdf/chords.pdf
	pdftoppm -png -f 1 -l 1 $< temp
	mv temp-1.png $@

clean:
	rm pdf/chords.pdf
