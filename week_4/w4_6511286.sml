fun exist (e, nil) = false 
  | exist (e, first::rest) = if e = first then true else exist(e, rest) 

fun lessthan(e, nil) = []
  | lessthan(e, first::rest) = if first < e then [first] @ lessthan(e, rest)
                               else lessthan(e, rest)

fun greaterthan(e, nil) = []
  | greaterthan(e, first::rest) = if first >= e then [first] @ greaterthan(e, rest)
                               else greaterthan(e, rest)

fun repeats (nil) = false
  | repeats (first::rest) = if null rest then false else if first = hd rest then true else repeats(rest)

fun quicksort(nil)= []
  | quicksort(first::rest) =
    quicksort(lessthan(first, rest)) @ [first] @ quicksort(greaterthan(first, rest));
