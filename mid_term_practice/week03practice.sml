fun iseven a = if a mod 2 = 0 then true else false;

fun cube a = a*a*a;
fun cuber a:real = a*a*a;

fun third a = hd (tl (tl( a)));

fun max3(a, b, c) = if a > b andalso a > c then a else if b > c andalso b > a
                    then b else c;

fun remove2(a, b, c) = (a, c)

fun fourthch(a) = hd(tl(tl(tl(explode a))))

fun rotate(a, b) = if b = 0 then a else rotate(tl (a), b-1) @ [hd(a)]

(*
fun rotate(a, 0) = a
  | rotate(head::last, b) = rotate(last, b-1) @ [head];
*)

(*
fun minHelper(a, b) = if null a then b else if b < hd (a) then minHelper(tl(a), b) else
  minHelper(tl(a), hd(a))

fun min(a) = minHelper(a, hd(a))
*)
fun minHelper(nil, b) = b
  | minHelper(head::last, b) = if b < head then minHelper(last, b) else
    minHelper(last, head)

fun min(nil) = 0
  | min(head::last) = minHelper(head::last, head)

(*
fun select(a, f) = if null a then [] else if f(hd (a)) then [hd(a)] @
  select(tl(a), f) else select(tl(a), f)
*)

fun select(nil, f) = []
  | select(head::last, f) = if f(head) then [head] @ select(last, f) else
    select(last, f)



