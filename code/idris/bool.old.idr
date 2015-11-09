-- total functions
-- block comments
-- symbolic arguments
-- pattern matching: any argument

module bool.old
import pair

data bool = true | false

id: bool -> bool
id b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

--There are 16 possible ways to fill in the result column for a truth
  --table or a binary Boolean function, and there are thus exactly 16
  --such functions and no more.
--

andp: pair bool bool -> bool
andp (mkPair true true) = true
andp (mkPair a b) = false

orp: pair bool bool -> bool
orp (mkPair false false) = false
orp (mkPair a b) = true

nandp: pair bool bool -> bool
nandp (mkPair true true) = false
nandp (mkPair a b) = true

xorp: pair bool bool -> bool
xorp (mkPair true false) = true
xorp (mkPair false true) = true
xorp (mkPair a b) = false

--Explicit

pand: bool -> bool -> bool
pand true a = id a
pand false a = constFalse a

por: bool -> bool -> bool
por true a = constTrue a
por false a = id a

pxor: bool -> bool -> bool
pxor true a = not a
pxor false a = id a

pnand: bool -> bool -> bool
pnand true a = not a
pnand false a = constTrue a

--Implicit
and: bool -> bool -> bool
and true true = true
and _ _ = false

uf: bool -> bool
uf = (and true)

or: bool -> bool -> bool
or false false = false
or _ _ = true
