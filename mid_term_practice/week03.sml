(* Jan Poonthong, 6511286, CSX3004(541) *)

fun iseven x = x mod 2 = 0;

fun cube x = x*x*x;

fun cuber x:real = x*x*x;

fun third x = hd (tl(tl x));

fun max3 (x,y,z) = if x > y andalso x > z then x else if y > z andalso y > x then y else z;

fun remove2 (x, y, z) = (x, z);

fun fourthch x = hd(tl(tl( tl(explode x))));

fun rotate (nil, n) = []
  | rotate (first::last, 0) = first::last
  | rotate (first::last, y) = rotate((last) @ [first], y-1);

fun minHelper ([], n) = n
  | minHelper (first::last, n) = if first < n then minHelper(last, first) else minHelper(last, n);

fun min x = minHelper(x, hd x);

fun isodd x = x mod 2 = 1
fun select ([], f) = []
  | select (first::last, f) = if f(first) then [first] @ select(last, f) else select(last, f)
