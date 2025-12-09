(* Once upon a time... OCaml example *)
type vampire = { location : string; birth : int; death : int }

let age v = v.death - v.birth

let () =
  let d = { location = "Transylvania"; birth = 1428; death = 1476 } in
  Printf.printf "%s age: %d\n" d.location (age d)
