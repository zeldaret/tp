lbl_807846B8:
/* 807846B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807846BC  7C 08 02 A6 */	mflr r0
/* 807846C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807846C4  4B FF FD F9 */	bl Draw__8daE_SB_cFv
/* 807846C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807846CC  7C 08 03 A6 */	mtlr r0
/* 807846D0  38 21 00 10 */	addi r1, r1, 0x10
/* 807846D4  4E 80 00 20 */	blr 
