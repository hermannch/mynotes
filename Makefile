PREFIX ?= /usr/local
BINDIR = $(PREFIX)/bin
DESTDIR=

all:

install:
	install -Dm0755 notes $(DESTDIR)/$(BINDIR)/notes

check:
	-shfmt -ci -d notes
	-shellcheck notes

.PHONY: all check install
