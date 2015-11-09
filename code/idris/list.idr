module list
import nat
import bool
import ite
import eq
import Serialize

infixr 7 ::,++

data list a = nil | (::) a (list a)

length: list a -> nat
length nil = O
length (n :: l') = S (length l')

append: list a -> list a -> list a
append nil m = m
append (h :: t) m = (h) :: (append t m)

|||Append as an infix operator ++
(++): list a -> list a -> list a
(++) nil m = m
(++) (h :: t) m = h :: (t++m)

|||map a function over the elements of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h :: t) = (f h) :: (map f t)

||| filter a list
filter: (a -> bool) -> list a -> list a
filter f  nil = nil
filter f (h::t) = ite (f h)
                  (h :: (filter f t))
                        (filter f t)

|||reduce a list
foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                  true
                  (member v t)

subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil l = true
subset_elements (h::t) a = and (member h a) (subset_elements t a)

same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = ite(and (subset_elements l1 l2) (subset_elements l2 l1))
                      true
                      false

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList (h::t) = toString h ++ ", " ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString nil = "[]"
  toString l = "[" ++ (toStringList l) ++ "]"
