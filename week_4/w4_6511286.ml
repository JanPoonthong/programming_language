fun exist(e, L) = 
    if e = hd L 
        then true 
    else exist(e, tl L);

fun lessthan(e: int, L: int list) =
    if null L then []
    else
        if hd L < e
            then [hd L] @ lessthan(e, tl L)
        else
            lessthan(e, tl L)
