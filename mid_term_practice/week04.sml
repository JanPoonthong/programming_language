fun exist (a, nil) = false
  | exist (a, x::xs) = if a = x then true else exist(a, xs);

fun lessthan (a, nil) = nil
  | lessthan (a, x::xs) = if x < a then [x] :: lessthan(a, xs) else lessthan(a, xs);

fun repeats nil = false
  | repeats (a::b::rest) = a = b orelse repeats(b::rest);

fun member (n, []) = false
  | member (n, x::xs) = exist(n, x::xs)

fun union (xs, nil) = [] 
  | union (xs, first::last) = if member(xs, first::last) then first::last else xs::first::last

fun intersection (nil, _) = []
  | intersection(x::xs, ys) = if member(x, ys) then x::intersection(xs, ys) else intersection(xs, ys)

fun powerset nil = [nil]
  | powerset (head::rest) = 
  let
    fun addToEach (e, nil) = nil
      | addToEach(e, x::xs) = (e::x) :: addToEach(e, xs);
    val a = powerset rest;
  in
    addToEach(head, a) @ a
  end;
