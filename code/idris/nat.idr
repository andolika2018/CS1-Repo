module nat

import bool
import eq
import Serialize

data nat = O | S nat

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add m n)

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = (S O)
fact (S n) = mult (fact n) (S n)

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

le: nat -> nat -> bool
le O m = true
le (S n) O = false
le (S n) (S m) = le n m

ex: nat -> nat -> nat
ex m O = S(O)
ex m (S n) = mult m (ex m n)

eq_nat: nat -> nat -> bool
eq_nat O O = true
eq_nat m O = false
eq_nat O m = false
eq_nat (S n) (S m) = eq_nat n m

instance eq nat where
  eql n1 n2 = eq_nat n1 n2

gt: nat -> nat -> bool
gt n m = not (le n m)

ge: nat -> nat -> bool
ge n m = xor (gt n m) (eq_nat n m)

lt: nat -> nat -> bool
lt n m = not (ge n m)

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "|" ++ toString (n)
