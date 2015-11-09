module boolOldTest
import bool.old
import pair

b1: bool
b1 = true
b2: bool
b2 = true
b3: bool
b3 = false
b4: bool
b4 = not true
b5: bool
b5 = not b1
b6: bool
b6 = not (not b5)

--Test cases.
b7: pair bool bool
b7 = mkPair true true
b8: pair bool bool
b8 = mkPair true false
b9: pair bool bool
b9 = mkPair false true
b10: pair bool bool
b10 = mkPair false false

--Exam Test Cases for pand
pand_t_t: bool
pand_t_t = pand true true
--expect true
pand_t_f: bool
pand_t_f = pand true false
--expect false
pand_f_t: bool
pand_f_t = pand false true
--expect false
pand_f_f: bool
pand_f_f = pand false false
--expect false

--Exam Test cases for por
por_t_t: bool
por_t_t = por true true
--expect true
por_t_f: bool
por_t_f = por true false
--expect true
por_f_t: bool
por_f_t = por false true
--expect true
por_f_f: bool
por_f_f = por false false
--expect false

--Exam Test cases for pxor
pxor_t_t: bool
pxor_t_t = pxor true true
--expect false
pxor_t_f: bool
pxor_t_f = pxor true false
--expect true
pxor_f_t: bool
pxor_f_t = pxor false true
--expect true
pxor_f_f: bool
pxor_f_f = pxor false false
--expect false

--Test Cases for pnand
pnand_t_t: bool
pnand_t_t = pnand true true
--expect false
pnand_t_f: bool
pnand_t_f = pnand true false
--expect true
pnand_f_t: bool
pnand_f_t = pnand false true
--expect true
pnand_f_f: bool
pnand_f_f = pnand false true
--expect true
