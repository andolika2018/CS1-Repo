module dnaTest
import dna
import list
import pair
import nat

dbleStrnd: list (pair base base)
dbleStrnd = (mkPair A T)::(mkPair G C)::(mkPair C G)::(mkPair T A)::nil

singleStrnd: list base
singleStrnd = A::T::C::G::nil

testCompBase:  base
testCompBase = complement_base A
--Expect T

testCompStrnd: list base
testCompStrnd = complement_strand singleStrnd
--Expect T::A::G::C::nil

testComplete: list (pair base base)
testComplete = complete singleStrnd
--Expect (mkPair A T)::(mkPair T A)::(mkPair C G)::(mkPair G C)::nil

testStrand1: list base
testStrand1 = strand1 dbleStrnd
--Expect A::G::C::T::nil

testStrand2: list base
testStrand2 = strand2 dbleStrnd
--Expect T::C::G::A::nil

countBaseATest: nat
countBaseATest = countBaseA (A::A::A::T::C::A::G::G::A::A::T::nil)
--Expect S(S(S(S(S(S(O))))))
