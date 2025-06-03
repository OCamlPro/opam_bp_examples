let normal () =
  Alcotest.(check string) "same string" "Hello OCamlers!!" (Helloer_lib.hello false)

let gentle () =
  Alcotest.(check string) "same string" "Welcome my dear OCamlers." (Helloer_lib.hello true)

(* Run it *)
let () =
  let open Alcotest in
  run "Tests" [
    "messages", [
      test_case "normal"  `Quick normal;
      test_case "gentle"  `Quick gentle;
    ];
  ]
