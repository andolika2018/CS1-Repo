module boolTest
import bool
import Serialize
{-Even though I included the id, constFalse, and constTrue functions,  
I didn't write test cases for them since we don't use them in the new  
functions - I did write a test case for not since I do use it in a  
function written in the new style.-}

--Testing not
ntT: bool
ntT = not true
--Returns false
ntF: bool
ntF = not false
--Returns true

--Testing and
and_t_t: bool
and_t_t = and true true
--Returns true
and_t_f: bool
and_t_f = and true false
--Returns false
and_f_t: bool
and_f_t = and false true
--Returns false
and_f_f: bool
and_f_f = and false false

--Testing or
or_t_t: bool
or_t_t = or true true
--Returns true
or_t_f: bool
or_t_f = or true false
--Returns true
or_f_t: bool
or_f_t = or false true
--Returns true
or_f_f: bool
or_f_f = or false false
--Returns false

--Testing xor
xor_t_t: bool
xor_t_t = xor true true
--Returns false
xor_t_f: bool
xor_t_f = xor true false
--Returns true
xor_f_t: bool
xor_f_t = xor false true
--Returns true
xor_f_f: bool
xor_f_f = xor false false
--Returns false

--Testing nand
nand_t_t: bool
nand_t_t = nand true true
--Returns false
nand_t_f: bool
nand_t_f = nand true false
--Returns true
nand_f_t: bool
nand_f_t = nand false true
--Returns true
nand_f_f: bool
nand_f_f = nand false false
--Returns true

s: String
s = toString true
