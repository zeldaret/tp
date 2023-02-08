lbl_80ABDE04:
/* 80ABDE04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABDE08  7C 08 02 A6 */	mflr r0
/* 80ABDE0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABDE10  4B FF C5 71 */	bl Delete__13daNpcRafrel_cFv
/* 80ABDE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABDE18  7C 08 03 A6 */	mtlr r0
/* 80ABDE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABDE20  4E 80 00 20 */	blr 
