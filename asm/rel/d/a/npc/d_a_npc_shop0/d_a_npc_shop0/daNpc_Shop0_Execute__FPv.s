lbl_80AEBACC:
/* 80AEBACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEBAD0  7C 08 02 A6 */	mflr r0
/* 80AEBAD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEBAD8  4B FF F4 E9 */	bl execute__13daNpc_Shop0_cFv
/* 80AEBADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEBAE0  7C 08 03 A6 */	mtlr r0
/* 80AEBAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEBAE8  4E 80 00 20 */	blr 
