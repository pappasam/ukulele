chords.pdf: chords.txt
	enscript \
		--font=Courier7 \
		--landscape \
		--header="Sam Roeca's Ukulele Chord Cheat Sheet" \
		-p output.ps \
		$<
	ps2pdf output.ps $@
	@rm output.ps

clean:
	rm chords.pdf
