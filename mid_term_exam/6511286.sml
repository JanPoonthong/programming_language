(* Jan Poonthong 6511286*)

(* Question 1  *)
datatype suit = Clubs | Diamonds | Hearts | Spades;
datatype rank = Ace | Two | Three | Four | Five | Six | Seven | Eight | Nine |
Ten | King | Queen | Jack;

(* Question 2 *)
fun productHelper(a, b) = if null b then nil else [(a, hd(b))] @ productHelper(a, tl(b));
   
fun product(a, b) = if null a then nil else productHelper(hd(a), b) @ product(tl(a), b);

fun cardToString(r: rank): string = case r of
             Ace => "Ace" |
             Two => "Two" |
             Three => "Three" |
             Four => "Four" |
             Five => "Five" |
             Six => "Six" |
             Seven => "Seven" |
             Eight => "Eight" |
             Nine => "Nine" |
             Ten => "Ten" |
             King => "King" |
             Queen => "Queen" |
             Jack => "Jack";

fun suitToString(s: suit): string = case s of
  Clubs => "Clubs" |
  Diamonds => "Diamonds" |
  Hearts => "Hearts" |
  Spades => "Spades";

fun cardname (x: rank) (b: suit) = cardToString(x) ^ " Of " ^ suitToString(b)

datatype day = Mon | Tue | Wed | Thu | Fri | Sat | Sun;
fun nextNDayOfWeek (x:int) (b: day) = 
    let
      fun startingDayIndex(b:day):int = case b of
                                 Mon => 0
                               | Tue => 1
                               | Wed => 2
                               | Thu => 3
                               | Fri => 4
                               | Sat => 5
                               | Sun => 6

         fun indexDay(p: int):day = case p of
                                 0 => Mon
                               | 1 => Tue
                               | 2 => Wed
                               | 3 => Thu
                               | 4 => Fri
                               | 5 => Sat
                               | 6 => Sun
    val index = (startingDayIndex(b) + x) mod 7
    in
      indexDay index
    end;

datatype coin = Penny of int | Nickel of int | Dime of int | Quarter of int;

fun sumcoins (Quarter w, Dime x, Nickel y, Penny z):real= 
  let 
    fun change (Quarter w) = real (w) *  0.25
      | change (Dime x) = real (x) * 0.10
      | change (Nickel y) = real (y) * 0.05
      | change (Penny z) = real (z) * 0.01;

    val q = change (Quarter w)
    val d = change (Dime x)
    val n = change (Nickel y)
    val p = change (Penny z)
  in 
    q + n + d + p
  end;
