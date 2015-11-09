module people
import bool
import list

record person where
   constructor mkPerson
   name : String
   age : Nat
   gender : bool
   height : Nat

supraja: person
supraja = mkPerson "Supraja" 19 true 60

brittany: person
brittany = mkPerson "Brittany" 20 true 64

abishek: person
abishek = mkPerson "Abhishek" 24 false 65

people: list person
people = supraja :: brittany :: abishek :: nil

--IGNORE THIS - this is an old homework code that I was too scared to throw out.
{-import pair
data people = mary | maurice

loves: people -> people
loves _ = maurice

p1: pair people people
p1 = mkPair mary maurice

p2: pair people people
p2 = mkPair maurice maurice-}
