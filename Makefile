all:

check:
	-shfmt -ci -d notes
	-shellcheck notes
