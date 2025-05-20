open Cmdliner

let hello gentle =
  print_endline (Helloer_lib.hello gentle)

let gentle =
  let doc = "Gentle version." in
  Arg.(value & flag & info ["g"; "gentle"] ~doc)

let cmd =
  let doc = "print welcome messages" in
  let man = [
    `S Manpage.s_bugs;
    `P "Email bug reports to <b@u.gs>." ]
  in
  let info = Cmd.info "helloer" ~version:"-0.1" ~doc ~man in
  Cmd.v info Term.(const hello $ gentle)

let main () = exit (Cmd.eval cmd)

let _ = main ()
