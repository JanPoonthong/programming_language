fun exist(a, nil) = false
  | exist(a, head::last) = if a = head then true else exist(a, last)

fun lessthan(a, nil) = []
  | lessthan(a, head::last) = if head < a then [head] @ lessthan(a, last) else lessthan(a, last)

fun greaterthan(a, nil) = []
  | greaterthan(a, head::last) = if head > a then [head] @ greaterthan(a, last)
                                 else greaterthan(a, last)

fun repeats(nil) = false
  | repeats(head:: nil) = false
  | repeats(head::shead::last) = if head = shead then true else repeats(shead::last)

fun quicksort(nil) = []
  | quicksort(head::last) = quicksort(lessthan(head, last)) @ [head] @ quicksort(greaterthan(head, last))

fun member
