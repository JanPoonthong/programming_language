fun exist (a, nil) = false
  | exist (a, x::xs) = if a = x then true else exist(a, xs);

fun lessthan (a, nil) = nil
  | lessthan (a, x::xs) = if x < a then [x] :: lessthan(a, xs) else lessthan(a, xs);

fun repeats _ = false
  | repeats (a::b::rest) = a = b orelse repeats(b::rest)

fun member (n, []) = false
  | member (n, x::xs) = exist(n, x::xs)

fun union (xs, nil) = xs
  | union (xs, first::last) = if member(first, xs) then union(xs, first::last) else first::union(xs, last);

fun intersection (xs, nil) = nil
  | intersection(xs, y::ys) = if exist(y, xs) then y::intersection(xs, ys) else intersection(xs, ys);

fun powerset nil = [[]]
  | powerset (first::last) = 
  let
    fun addToEach (e, nil) = nil
      | addToEach(e, x::ys) = [e::xs] :: addToEach(e, xs)
    val a = powerset rest;
  in
      addToEach(head, a) @ a
    end;
