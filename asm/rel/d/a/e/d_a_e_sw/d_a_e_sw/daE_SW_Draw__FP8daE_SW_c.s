lbl_807A76C4:
/* 807A76C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A76C8  7C 08 02 A6 */	mflr r0
/* 807A76CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A76D0  4B FF FE 35 */	bl draw__8daE_SW_cFv
/* 807A76D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A76D8  7C 08 03 A6 */	mtlr r0
/* 807A76DC  38 21 00 10 */	addi r1, r1, 0x10
/* 807A76E0  4E 80 00 20 */	blr 
