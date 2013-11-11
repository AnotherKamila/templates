GHCFLAGS = -O -rtsopts

%.bin: %.hs
	ghc $(GHCFLAGS) -o $*.bin $*.hs
	rm $*.{o,hi}
