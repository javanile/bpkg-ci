

build-bpkg-install:
	@curl -sLo bpkg-install.sh https://raw.githubusercontent.com/bpkg/bpkg/master/lib/install/install.sh
	@sed -i 's/$\{BASH_SOURCE\[0\]\}/$\0/g' bpkg-install.sh

test-bpkg-install: build-bpkg-install
	@cat bpkg-install.sh | bash
