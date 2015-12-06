# atom-ocaml

This package simplifies the creation of an Atom editor package written in OCaml.
It sets up a simple Hello World example that you can use as a jumping-off point.

### Usage

```
$ npm install -g atom-ocaml
$ atom-ocaml-init new-package-name
$ cd new-package-name
$ make
$ apm link
```

Then open Atom!

From there, simply write your OCaml code, run `make`, and restart Atom.

### See also

[`atom-ocaml-bindings`](https://www.npmjs.com/package/atom-ocaml-bindings), a
package which provides easy access to Atom's APIs from OCaml.
