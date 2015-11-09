module list
import nat

data list a = nil | cons a (list a)

length: list a -> nat
length nil = O
length (cons n l') = S (length l')

append: list a -> list a -> list a
append nil m = m
append (cons h t) m = cons (h) (append t m)

infixr 7 ::

data list' a = nil' | (::) a (list' a)

length': list' a -> nat
length' nil' = O
length' (n :: l') = S (length' l')
