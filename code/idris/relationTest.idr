module relationTest
import relation
import people
import list
import bool
import pair

years': Nat
years' = query plus 0 age gender people
--Returns 39

totalHeight: Nat
totalHeight = query plus 0 height gender people
--Returns 124

names: String
names = query (++) "" name gender people
--"SuprajaBrittany"

aveAge': pair Nat Nat
aveAge' = ave_rel people gender age
--returns 39/2

--New Test Cases
sumAge: Nat
sumAge = sum_rel people gender age
--Returns 39

avgHeight: pair Nat Nat
avgHeight = ave_rel people gender height
--Returns 124/2

countGirls: Nat
countGirls = count_rel people gender
--Returns 2
