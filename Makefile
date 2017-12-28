GHC = ghc -dynamic

%: %.hs
	$(GHC) $<
