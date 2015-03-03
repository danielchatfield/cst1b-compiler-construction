(* map : ('a -> 'b) * 'a list -> 'b list *)
let rec map(f, l) =
    match l with
    | [] -> []
    | a :: rest -> (f a) :: (map(f, rest))


let map(cnt, f, l) =
    match l with
    | [] -> cnt []
    | a::rest -> f (fun b -> map)

(* fib : int -> int *)
let rec fib m =
    if m = 0
    then 1
    else if m = 1
        then 1
        else fib(m - 1) + fib (m - 2)

let map_test_1 = map(fib, [0; 1; 2; 3; 4; 5; 6; 7; 8; 9; 10])

let map(cnt, f, l) =
     match l with
     | [] -> cnt []
     | a::rest -> f (fun v -> map((fun v2 -> cnt (v :: v2)), f, (rest))) a
