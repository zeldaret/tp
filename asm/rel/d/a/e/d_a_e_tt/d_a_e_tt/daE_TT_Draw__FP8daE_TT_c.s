lbl_807BDAC0:
/* 807BDAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BDAC4  7C 08 02 A6 */	mflr r0
/* 807BDAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BDACC  4B FF FE 61 */	bl draw__8daE_TT_cFv
/* 807BDAD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BDAD4  7C 08 03 A6 */	mtlr r0
/* 807BDAD8  38 21 00 10 */	addi r1, r1, 0x10
/* 807BDADC  4E 80 00 20 */	blr 
