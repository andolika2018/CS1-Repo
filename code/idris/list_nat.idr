module list_nat
import nat
import pair

data list_nat = nil | cons nat list_nat

length: list_nat -> nat
length nil = O
length (cons n l') = S (length l')

append: list_nat -> list_nat -> list_nat
append nil m = m
append (cons h t) m = cons (h) (append t m)
