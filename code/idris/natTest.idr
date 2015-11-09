module natTest
import nat
import bool
import Serialize
import eq

--Test cases for add
add_O_m: nat
add_O_m = add O (S(S(O)))
--Returns S(S(O))
add_m_n: nat
add_m_n = add (S(S(O))) (S(O))
--Returns (S(S(S(O))))

--Test cases for mult
mult_O_m: nat
mult_O_m = mult O (S(S(S(O))))
--Returns O
mult_m_n: nat
mult_m_n = mult (S(S(S(O)))) (S(S(S(S(O)))))
--Returns 12

--test cases for fact
factO: nat
factO = fact O
--Returns S(O)
factm: nat
factm = fact (S(S(S(O))))
--Returns (S(S(S(S(S(S(O)))))))

--test cases for sub
sub_O_m: nat
sub_O_m = sub O (S(S(O)))
--Returns O
sub_m_O: nat
sub_m_O = sub (S(S(O))) O
--Returns (S(S(O)))
sub_m_n: nat
sub_m_n = sub (S(S(S(S(O))))) (S(S(O)))
--Returns (S(S(O)))
sub_n_m: nat
sub_n_m = sub (S(S(O))) (S(S(S(S(S(O))))))
--Returns O

--Test cases for less
le_O_m: bool
le_O_m = le O (S(S(S(O))))
--Returns true
le_m_O: bool
le_m_O = le (S(S(S(S(O))))) O
--Returns false
le_m_n: bool
le_m_n = le (S(S(O))) (S(S(S(S(S(O))))))
--Returns true
le_n_m: bool
le_n_m = le (S(S(S(S(S(O)))))) (S(S(S(O))))
--Returns false

--Test cases for ex
ex_m_O: nat
ex_m_O = ex (S(S(O))) O
--Returns (S(O))
ex_m_n: nat
ex_m_n = ex (S(S(S(O)))) (S(S(O)))
--Returns (S(S(S(S(S(S(S(S(S(O))))))))))

--Test cases for eq
eq_O_O: bool
eq_O_O = eq_nat O O
--Returns true
eq_O_m: bool
eq_O_m = eq_nat O (S(S(S(O))))
--Returns false
eq_m_O: bool
eq_m_O = eq_nat (S(S(S(S(O))))) O
--Returns false
eq_m_n: bool
eq_m_n = eq_nat (S(S(S(S(O))))) (S(S(S(S(S(S(O)))))))
--Returns false
eq_m_m: bool
eq_m_m = eq_nat (S(S(S(S(S(S(O))))))) (S(S(S(S(S(S(O)))))))
--Returns true

--Test cases for gt
gt_m_n: bool
gt_m_n = gt (S(S(S(S(O))))) (S(O))
--Returns true
gt_n_m: bool
gt_n_m = gt (S(O)) (S(S(S(S(S(S(O)))))))
--Returns false
gt_m_m: bool
gt_m_m = gt (S(S(S(S(O))))) (S(S(S(S(O)))))
--Returns false

--Test cases for ge
ge_m_n: bool
ge_m_n = ge (S(S(S(S(O))))) (S(O))
--Returns true
ge_n_m: bool
ge_n_m = ge (S(O)) (S(S(S(S(S(S(O)))))))
--Returns false
ge_m_m: bool
ge_m_m = ge (S(S(S(S(O))))) (S(S(S(S(O)))))
--Returns true

--Test cases for lt
lt_m_n: bool
lt_m_n = lt (S(S(S(S(O))))) (S(O))
--Returns false
lt_n_m: bool
lt_n_m = lt (S(O)) (S(S(S(S(S(S(O)))))))
--Returns true
lt_m_m: bool
lt_m_m = lt (S(S(S(S(O))))) (S(S(S(S(O)))))
--Returns false

s: String
s = toString (S(S(S(S(S(O))))))
