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
data diction: (k : Type) -> (v : Type) -> Type

emptyDict : diction k v

dict_remove: (eq k) => k -> dict k v -> dict k v

dict_override: (eq k, eq (pair k v)) => k -> v -> dict k v -> dict k v

dict_lookup: (eq k) => k -> dict k v -> option v

--Equality
dict_eql: (eq k, eq v) => (dict k v) -> (dict k v) -> bool

instance (eq k, eq v) => eq (dict k v) where
  eql d1 d2 = dict_eql d1 d2

--Serialization
dict_toString: (Serialize k, Serialize v) => (dict k v) -> String

instance (Serialize k, Serialize v) => Serialize (dict k v) where
  toString d = dict_toString d

--Implementation
data dict k v = mkDict (set (pair k v))

emptyDict = mkDict emptySet

{-
--dict_remove
set_filter: (a -> bool) -> set a -> set a
set_filter f (mkSet l) = mkSet (filter f l)

matchKey: (eq k) => k -> pair k v -> bool
matchKey k (mkPair k1 p1) = ite (eql k k1) true false

notMatchKey: (eq k) => k -> pair k v -> bool
notMatchKey k p = not (matchKey k p)

dict_remove k (mkDict s) = mkDict (set_filter (notMatchKey k) s)

--dict_override
replacePair: (eq k) => k -> pair k v -> pair k v
replacePair k v (mkPair k1 p1) = ite (eql k k1)
                                 dict_remove k (mkDict

dict_override k v (mkDict k v) = mkDict (set_replace
-}
