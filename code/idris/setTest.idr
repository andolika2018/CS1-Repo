module setTest
import nat
import eq
import set
import list

s0: set nat
s0 = new_set

s1: set nat
s1 = set_insert (S O)  s0

s2: set nat
s2 = set_insert (S O) s1

s3: set nat
s3 = set_insert (S (S O)) s2

s4: set nat
s4 = mkSet ((S(S(S(O))))::(S(S(O)))::nil)
l4: list nat
l4 = (S(S(S(O))))::(S(S(O)))::nil

s5: set nat
s5 = mkSet ((S(S(O)))::(S(S(S(O))))::nil)

l5: list nat
l5 = (S(S(O)))::(S(S(S(O))))::nil

s6: set nat
s6 = mkSet ((S(S(O)))::(S(S(S(O))))::nil)

s7: set nat
s7 = mkSet ((S(S(O)))::(S(S(S(S(S(S(S(O))))))))::(S(S(S(O))))::nil)

l6: list nat
l6 = (S(S(O)))::(S(S(S(O))))::nil

diffOrder: bool
diffOrder = eql s4 s5

sub1: bool
sub1 = subset_elements l4 l5

sameOrder: bool
sameOrder = eql s5 s6

sub2: bool
sub2 = subset_elements l5 l6

