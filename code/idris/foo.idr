module foo

import list
import nat

{-fancyplus: list nat -> nat
fancyplus nil = O
fancyplus (h::t) = add h (fancyplus t)

fancymult: list nat -> nat
fancymult nil = (S O)
fancymult (h::t) = mult h (fancymult t)-}

--Points of variation: binary operator, identity element, type of the
  --list element

fancy: (a -> a -> a) -> a -> list a -> a
fancy f id nil = id
fancy f id (h::t) = f (h) (fancy f id t)
