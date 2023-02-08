lbl_80AEBAAC:
/* 80AEBAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEBAB0  7C 08 02 A6 */	mflr r0
/* 80AEBAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEBAB8  4B FF F4 D5 */	bl destroy__13daNpc_Shop0_cFv
/* 80AEBABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEBAC0  7C 08 03 A6 */	mtlr r0
/* 80AEBAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEBAC8  4E 80 00 20 */	blr 
