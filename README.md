This repository contains toy project to illustrate our _`opam` deep dive_ blogpost serie.

Feel free to look at branches and commit history to see the details.

* [opam-103]( https://github.com/OCamlPro/opam_bps_examples/tree/opam-103) - **helloer** in `opam-103`: a simple project that
  * uses a CLI library `cmdliner`
  * uses a test library `alcotest`
  * defines a minimal opam file and its linted version

* [dune-minimal]( https://github.com/OCamlPro/opam_bps_examples/tree/dune-minimal) - **helloer** in `opam-103`: the same project than in `opam-103` branch that contains in addition:
  * dune packages definition
  * cram tests defintion
  * uses `odoc` for documentation generation
