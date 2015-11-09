module listaTest
import list
import nat
import bool

numbs: list Nat
numbs = (cons 4 (cons 3 nil))

--Type inference - both of these nils are not the same.
l1: Nat
l1 = length (cons O nil)
l2: Nat
l2 = length (cons true nil)
l3: Nat
l3 = length nil {a=nat}

--New notation
li: list' bool
li = true :: false :: true :: true :: nil'
