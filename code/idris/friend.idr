module friend

import bool

|||A friend is someone who is or isn't trustworthy,
|||who has a name, and whoo has an age in years.

data friend = mkFriend bool String Nat

f1: friend
f1 = mkFriend true "Rachel" 20
f2: friend
f2 = mkFriend true "Brittany" 19

getAge: friend -> Nat
getAge (mkFriend t n a) = a

getName: friend -> String
getName (mkFriend t n a) = n

getTrust: friend -> bool
getTrust (mkFriend t n a) = t


