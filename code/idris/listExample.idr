module listExample
import Receptor
import list
import relation
import bool
import pair

spacialComp: list Nat
spacialComp = map spacialAcuity allRcptrs

allNames: list String
allNames = map name allRcptrs

{-Statistical Queries on the records-}
numReceptors: Nat
numReceptors = count_rel allRcptrs adaptation
--Returns 2 - only 2 receptors are fast adapting or "true"

fastAdptSpacialAve: pair Nat Nat
fastAdptSpacialAve = ave_rel allRcptrs adaptation spacialAcuity
--The average spacial acuity of fast adapting receptors; Returns pair 105 2 or 105/2

fastAdptSpacialSum: Nat
fastAdptSpacialSum = sum_rel allRcptrs adaptation spacialAcuity
--Sum of spacial acuity of fast adapting receptors; returns 105
