GHC = ghc

%: %.hs
	$(GHC) $<