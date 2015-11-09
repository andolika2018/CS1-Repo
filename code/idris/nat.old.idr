module nat.old
import bool
%default total

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false.
isZero: nat -> bool
isZero O = true
isZero (S _) = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| returns true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

||| given a pair of natural numbers, return its sum
addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = S ( addp (mkPair n m))

--Implicit
add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

pf: nat -> nat
pf = add (S (S O))

||| given a pair of natural numbers, return its product
multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) = addp( mkPair (m) (multp (mkPair n m)))

||| given a natural number, return the factorial
factp: nat -> nat
factp O = S( O )
factp (S n) = multp (mkPair (factp(n)) (S n))

subp: pair nat nat -> nat
subp (mkPair O m) = O
subp (mkPair n O) = n
subp (mkPair (S n) (S m)) = subp (mkPair n m)

lep: pair nat nat -> bool
lep (mkPair O m) = true
lep (mkPair (S n) O) = false
lep (mkPair (S n) (S m)) = lep (mkPair n m)

exp: pair nat nat -> nat
exp (mkPair m O) = S(O)
exp (mkPair m (S n)) = multp(mkPair (m) (exp(mkPair m n)))

eqp: pair nat nat -> bool
eqp (mkPair O O) = true
eqp (mkPair m O) =  false
eqp (mkPair O m) = false
eqp (mkPair (S n) (S m)) = eqp (mkPair n m)

gtp: pair nat nat -> bool
gtp (mkPair n m) = not (lep(mkPair n m))

gep: pair nat nat -> bool
gep (mkPair n m) = xorp(mkPair (gtp (mkPair n m)) (eqp (mkPair n m)) )

ltp: pair nat nat -> bool
ltp (mkPair n m) = not (gep (mkPair n m))
