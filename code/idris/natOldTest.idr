module natOldTest
import nat.old
import bool
import pair

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S t

-- HOMEWORK #5: Make up some examples of your own. Add them below this
-- comment.

q: nat
q = S( S( S( O)))

w: nat
w = (S( S( S( S( S( q))))))

k: nat
k = S( w)

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S t

-- HOMEWORK #5: Make up some examples of your own. Add them below this
-- comment.

q: nat
q = S( S( S( O)))

w: nat
w = (S( S( S( S( S( q))))))

k: nat
k = S( w)

y: nat
y = succ( O )

a: bool
a = evenb( O )

b: bool
b = evenb (S O )

c: bool
c = evenb( S( S( O)))

d: bool
d = evenb( r)

e: bool
e = evenb((S (r)))

||| a test, expecting O
h1: nat
h1 = addp (mkPair O O)

||| a test, expecting S (S O)
h2: nat
h2 = addp (mkPair O (S (S O)))

||| a test, expecting (S O)
h3: nat
h3 = addp (mkPair (S O) O)

||| a test, expecting (S (S (S (S (S O)))))
h4: nat
h4 = addp (mkPair (S (S O)) (S (S (S O))))

test1: nat
test1 = multp( mkPair O (S(S(S(O)))))

test2: nat
test2 = multp( mkPair (S(S(S(O)))) (S(S(O))))

test3: nat
test3 = factp O

test4: nat
test4 = factp (S(S(O)))

test5: nat
test5 = factp (S(S(S(O))))

test6: nat
test6 = factp (S(S(S(S(O)))))

test7: nat
test7 = factp (S(S(S(S(S(O))))))

--Test cases for exp, lep, eqp, gtp, gep, ltp.
allnone: pair nat nat
allnone = mkPair O O

somenone: pair nat nat
somenone = mkPair((S(S(S(O)))) (O))

nonesome: pair nat nat
nonesome = mkPair( (O) (S(S(S(S(S(O)))))))

bigsmall: pair nat nat
bigsmall = mkPair( (S(S(S(S(S(S(O))))))) (S(S(S(O)))))

smallbig: pair nat nat
smallbig = mkPair((S(S(O))) (S(S(S(S(S(O)))))))

nonzeroeq: pair nat nat
nonzeroeq = mkPair((S(S(S(O)))) (S(S(S(O)))))

fibTest1: nat
fibTest1 = O

fibTest2: nat
fibTest2 = S(O)

fibTest3: nat
fibTest3 = S(S(S(O)))
