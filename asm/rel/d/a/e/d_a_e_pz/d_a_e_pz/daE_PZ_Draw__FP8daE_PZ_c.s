lbl_807587E0:
/* 807587E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807587E4  7C 08 02 A6 */	mflr r0
/* 807587E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807587EC  4B FF FD D1 */	bl draw__8daE_PZ_cFv
/* 807587F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807587F4  7C 08 03 A6 */	mtlr r0
/* 807587F8  38 21 00 10 */	addi r1, r1, 0x10
/* 807587FC  4E 80 00 20 */	blr 
