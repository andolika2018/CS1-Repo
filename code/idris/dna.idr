module dna
import pair
import list
import nat
import bool
import ite

data base = A | T | C | G

ATpair: pair base base
ATpair = mkPair A T
TApair: pair base base
TApair = mkPair T A
GCpair: pair base base
GCpair = mkPair G C
CGpair: pair base base
CGpair = mkPair C G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base G = C
complement_base C = G

complement_strand: list base -> list base
complement_strand nil = nil
complement_strand a = map complement_base a

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 ((mkPair a b) :: t) = a :: (strand1 t)

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 ((mkPair a b) :: t) = b :: (strand2 t)

complete: list base -> list (pair base base)
complete nil = nil
complete (h :: t) = (mkPair h (complement_base h))::(complete t)

--complete2: list base -> list (pair base base)
--complete2 nil = nil
--complete2 (h :: t) = map complement_base h

numAssign: base -> base -> nat
numAssign A A = S(O)
numAssign T T = S(O)
numAssign C C = S(O)
numAssign G G = S(O)
numAssign _ _ = O

{-isSame: base -> base -> nat
isSame A A = S(O)
isSame T T = S(O)
isSame C C = S(O)
isSame G G = S(O)
isSame _ _ = O

countBase: list base -> base -> nat
countBase nil a = O
countBase b a = list.foldr add O (map (isSame a b))-}

countListA: base -> nat
countListA A = S(O)
countListA _ = O

countBaseA: list base -> nat
countBaseA nil = O
countBaseA a = list.foldr add O (map countListA a)
