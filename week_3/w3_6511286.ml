(* Jan Poonthong, 6511286, CSX3004(541) *)

fun iseven n = if n mod 2 = 0 then true else false;

fun cube n = n*n*n;

fun cuber(n): real =  n*n*n;

fun third L = hd (tl (tl (L)));

fun max3(a, b, c):int = if a >= b andalso a >= c then a else if b >= c then b else c;

fun remove2(a, b, c) = (a, c);

fun fourthch x = hd (tl (tl (tl (explode x))));

fun rotate(a: 'a list, b: int): 'a list = if b = 0 then a else rotate(tl a @ [hd a] , b-1)

fun minhelper(temp: int, alist) =
  if null alist
    then temp
  else
    if temp <= hd alist
      then minhelper(temp, tl alist)
    else
      minhelper(hd alist, tl alist)
      
fun min(a: int list): int = minhelper(hd a, tl a);


fun isodd(b): bool = if b mod 2 = 1 then true else false
fun iseven(b): bool = if b mod 2 = 0 then true else false

fun select(a: 'a list, f: 'a -> bool): 'a list =
  if null a
    then []
  else
    if f(hd a)
      then [hd a] @ select(tl a, f)
    else
      select(tl a, f)

