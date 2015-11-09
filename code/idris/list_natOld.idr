module list_natOld
import nat
import pair

data list_nat = nil | cons nat list_nat

lO: list_nat
lO = nil

l1: list_nat
l1 = cons O nil

l2: list_nat
l2 = (cons (S O) (cons (S(S O)) nil))

l3: list_nat
l3 = cons (S(S(S O))) l2

length: list_nat -> nat
length nil = O
length (cons n l') = S (length l')

appendp: pair list_nat list_nat -> list_nat
appendp (mkPair nil m) = m
appendp (mkPair (cons h t) m) = cons (h) (appendp (mkPair t m))
