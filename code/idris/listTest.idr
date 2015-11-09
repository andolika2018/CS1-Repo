module listTest
import nat
import list
import eq
import Serialize

--Test case for append
append_O_listm: list nat
append_O_listm = nil++((S O)::(S(S(O)))::nil)
--Returns  (S O):: ((S(S(O))) nil)
append_listn_listm: list nat
append_listn_listm = ((S O)::(S(S(O)))::nil)++ (((S(S(O)))::((S(S(O)))::(S O)::nil)))
--Returns  (S O)::((S (S O))::((S (S O))::((S (S O)):: ((S O) nil))))

--Test for eq
isOne: bool
isOne = (member (S O) append_O_listm)

l1: list nat
l1 = (S(S(S(S(O)))))::(S(S(S(O))))::(S(O))::nil
s: String
s = toString l1
