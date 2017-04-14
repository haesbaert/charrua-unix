#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let () =
  let publish = Pkg.(publish ~artefacts:[`Distrib] ()) in (* No docs artefacts *)
  Pkg.describe ~publish "charrua-unix" @@ fun _ -> Ok [ Pkg.bin "src/charruad" ]
