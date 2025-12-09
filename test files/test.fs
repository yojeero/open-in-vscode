// Once upon a time... F# example
type Vampire = { Location: string; Birth: int; Death: int }
let age v = v.Death - v.Birth
[<EntryPoint>]
let main argv =
    let d = { Location = "Transylvania"; Birth = 1428; Death = 1476 }
    printfn "%s age: %d" d.Location (age d)
    0
