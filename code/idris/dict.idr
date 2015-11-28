module dictionary

import set_adt_hw
import bool
import option
import pair
import nat
import eq
import Serialize
import list
import ite

--Specification
data dict: (k: Type) -> (z: Type) -> Type

emptyDict: dict k z

dict_remove: (eq k) => k -> dict k z -> dict k z

dict_override: (eq k, eq (pair k z)) => k -> z -> dict k z -> dict k z

dict_lookup: (eq k) => k -> dict k z -> option z

--Equality
dict_eql: (eq k, eq z) => (dict k z) -> (dict k z) -> bool

instance (eq k, eq z) => eq (dict k z) where
  eql d1 d2 = dict_eql d1 d2

--Serialization
dict_toString: (Serialize k, Serialize z) => (dict k z) -> String

instance (Serialize k, Serialize z) => Serialize (dict k z) where
  toString d = dict_toString d

--Implementation
data dict k z = mkDict (set (pair k z))

emptyDict = mkDict emptySet

--dict_remove
set_filter: (a -> bool) -> set a -> set a
set_filter f (mkSet l) = mkSet (filter f l)

matchKey: (eq k) => k -> pair k z -> bool
matchKey k (mkPair k1 p1) = ite (eql k k1) true false

notMatchKey: (eq k) => k -> pair k z -> bool
notMatchKey k p = not (matchKey k p)

dict_remove k (mkDict s) = mkDict (set_filter (notMatchKey k) s)

--dict_override
dict_insert: eq(pair a b) => pair a b -> dict a b -> dict a b
dict_insert p (mkDict s) = mkDict (set_insert p s)

dict_override k v (mkDict s) = (dict_insert (mkPair k v) (dict_remove k (mkDict s)))
