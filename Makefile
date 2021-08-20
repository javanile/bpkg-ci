
## -----
## Build
## -----
build: build-bpkg-install

build-bpkg-install:
	@curl -sLo bpkg-install.sh https://raw.githubusercontent.com/bpkg/bpkg/master/lib/install/install.sh
	@sed -i 's/master/main/g' bpkg-install.sh
	@sed -i 's/$\{BASH_SOURCE\[0\]\}/$\0/g' bpkg-install.sh
	@sed -i 's/local let needs_global=0/local let needs_global=1/g' bpkg-install.sh

## ----
## Test
## ----
test: test-bpkg-install

test-bpkg-install: build-bpkg-install
	@cat bpkg-install.sh | bash -s term
