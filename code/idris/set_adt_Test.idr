module set_adt_Test

import set_adt_hw
import bool
import option
import pair
import list
import nat
import eq
import Serialize
import list
import ite

--Empty set
s0: set nat
s0 = mkSet nil

--General set.
l1: list nat
l1 = (S(S(S(S(O)))))::(S(S(S(O))))::(S(O))::(S(S(O)))::nil
s1: set nat
s1 = mkSet l1

--Shares (S(S(S(S(O))))) and (S(O)) with s1
l2: list nat
l2 = (S(S(S(S(O)))))::(S(S(S(S(S(S(S(O))))))))::(S(O))::nil
s2: set nat
s2 = mkSet l2

--Shares no elements with s1 and s2.
l3: list nat
l3 = (S(S(S(S(S(S(S(S(S(S(S(O))))))))))))::nil
s3: set nat
s3 = mkSet l3

--Set of even numbers
l4: list nat
l4 = (S(S(S(S(O)))))::(S(S(O)))::nil
s4: set nat
s4 = mkSet l4

--Set of odd numbers
l5: list nat
l5 = (S(S(S(O))))::(S(O))::nil
s5: set nat
s5 = mkSet l5

--Test cases of isEmpty
empty_Test0: bool
empty_Test0 = isEmpty s0
--Returns true

empty_Test1: bool
empty_Test1 = isEmpty s1
--Returns false

--Set insert
insert_Test0: set nat
insert_Test0 = set_insert (S O) s1
--returns the elements of s1
insert_Test1: set nat
insert_Test1 = set_insert (S(S(S(S(S(O)))))) s1
--returns mkSet (S (S (S (S (S O)))) :: S (S (S (S O))) :: S (S (S O)) :: S O :: S (S O) :: nil

--Test cases for set_remove
remove_Test0: set nat
remove_Test0 = set_remove (S(S(S(S(S(O)))))) s1
--Returns s1 as is (5 is not in s1).
remove_Test1: set nat
remove_Test1 = set_remove (S(O)) s1
--Returns (S(S(S(S(O)))))::(S(S(S(O))))::(S(S(O)))::nil

--Test cases for set_cardinality
card_Test0: nat
card_Test0 = set_cardinality s0
--Returns O.
card_Test: nat
card_Test = set_cardinality s1
--Returns S(S(S(S(O))))

--Test cases for set_member
memb_Testt: bool
memb_Testt = set_member (S(O)) s1
--Returns true
memb_Testf: bool
memb_Testf = set_member (S(S(S(S(S(S(O))))))) s1
--Returns false
memb_TestO: bool
memb_TestO = set_member (S(O)) s0
--Returns false

--Test cases for set_union
union_Test: set nat
union_Test = set_union s1 s2
--Returns set of (S(S(S(O))))::(S(S(O)))::(S(S(S(S(O)))))::(S(S(S(S(S(S(S(O))))))))::(S(O))::nil
union_Test2: set nat
union_Test2 = set_union s2 s1
--Returns set of (S(S(S(S(S(S(S(O))))))))::(S(S(S(S(O)))))::(S(S(S(O))))::(S(O))::(S(S(O)))::nil
--We notice that the order of the argument doesn't matter - check
union_Test3: set nat
union_Test3 = set_union s1 s0
--Returns the l1 exactly.

--Test cases for set_intersection
intersect_Test: set nat
intersect_Test = set_intersection s1 s2
--Returns (S(S(S(S(O)))))::(S(O))::nil
intersect_Test0: set nat
intersect_Test0 = set_intersection s1 s0
--Returns the empty set
intersect_Testn: set nat
intersect_Testn = set_intersection s1 s3
--Returns the empty set

--Test cases for set_difference
difference_Test11: set nat
difference_Test11 = set_difference s1 s1
--Returns the empty set.
difference_Test12: set nat
difference_Test12 = set_difference s1 s2
--Returns (S(S(S(O))))::(S(S()))::nil
difference_Test21: set nat
difference_Test21 = set_difference s2 s1
--Returns (S(S(S(S(S(S(S(O))))))))::nil

--Test cases for set_forall
forall_TestE: bool
forall_TestE = set_forall evenb s4
--Returns true
forall_TestO: bool
forall_TestO = set_forall evenb s5
--Returns false
forall_TestM: bool
forall_TestM = set_forall evenb s1
--Returns false

--Test cases for set_exists
exists_TestE: bool
exists_TestE = set_exists evenb s4
--Returns true
exists_TestO: bool
exists_TestO = set_exists evenb s5
--Returns false
exists_TestM: bool
exists_TestM = set_exists evenb s1
--Returns true

--Test cases for set_witness
witness_test0: option nat
witness_test0 = set_witness evenb s5
--Returns none
witness_testall: option nat
witness_testall = set_witness evenb s4
--Returns some (S(S(S(S(O)))))
witness_testreg: option nat
witness_testreg = set_witness evenb s1
--Returns some (S(S(S(S(O)))))

--Test cases for set_product
prod_Test1: set (pair nat nat)
prod_Test1 = set_product s4 s5
--Returns (mkPair (S(S(S(S(O))))) (S(S(S()))))::(mkPair S(S(S(S(O))))
  --(S(O)))::(mkPair (S(S(O))) (S(S(S(O)))))::(mkPair (S(S(O))) (S(O)))::nil
prod_Test0: set (pair nat nat)
prod_Test0 = set_product s1 s0
--Returns the empty set

--Test cases for set_powerset

--Test cases for eq_set
eq_TestEq: bool
eq_TestEq = eql s1 s1
--Returns true
eq_TestF: bool
eq_TestF = eql s1 s2
--Returns false

--Test cases for toString
string_TestN: String
string_TestN = toString s0
--Returns "{}"
string_Test: String
string_Test = toString s1
--Returns "{||||Z, |||Z, |Z, ||Z}"
