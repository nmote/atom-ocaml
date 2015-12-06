SRCDIR=ml
LIBSDIR=libs
BUILDDIR=_build
ATOM_BINDINGS=node_modules/atom-ocaml-bindings

.PHONY:
all: main.js

%.byte: $(SRCDIR)/%.ml $(LIBSDIR) node_modules
	ocamlbuild -Is $(LIBSDIR),$(SRCDIR) -use-ocamlfind -pkgs js_of_ocaml,js_of_ocaml.syntax -syntax camlp4o $@

%.js: %.byte
	js_of_ocaml $(BUILDDIR)/$(SRCDIR)/$<

$(LIBSDIR):
	# Seemingly, ocamlbuild does not like
	ln -s $(ATOM_BINDINGS) $(LIBSDIR)

node_modules:
	npm install

clean:
	rm -r _build
	rm $(LIBSDIR)
	rm -r node_modules
