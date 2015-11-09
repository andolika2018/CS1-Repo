module set
import list
import ite
import bool
import eq

||| mkSet is meant to be private
data set a = mkSet (list a)

||| a starting for building any set
new_set: set a
new_set = mkSet nil

|||return {given value} union given set
set_insert: (eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite  (member v l)
                              (mkSet l)
                              (mkSet (v::l))
--set_insert v (mkSet l) = mkSet (v::l)

eq_set: (eq a) => set a -> set a -> bool
eq_set (mkSet l1) (mkSet l2) = same_elements l1 l2

instance (eq a) => eq (set a) where
  eql s1 s2 = eq_set s1 s2
