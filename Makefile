GHC = ghc

%: %.hs
	$(GHC) $<
