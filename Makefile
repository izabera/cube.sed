BINDIR=/usr/bin
SRCS=$(wildcard *.sed)
BINS=$(foreach src,$(SRCS),$(BINDIR)/$(basename $(src)))

DEFAULT:
	@echo install and uninstall targets require root

$(BINDIR)/%: %.sed
	cp $< $@

install: $(BINS)

uninstall:
	rm $(BINS)
