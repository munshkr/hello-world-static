.PHONY: build clean

all:
	@echo "Use 'make build', or 'make build-llvm' for using LLVM"

build-llvm: clean
	stack install --ghc-options="-fllvm" --local-bin-path .

build: clean
	stack install --split-objs --ghc-options="-fPIC" --local-bin-path .

clean:
	stack clean
