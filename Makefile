.PHONY: build clean

build: clean
	stack install --split-objs --ghc-options="-fPIC" --local-bin-path .

clean:
	stack clean
