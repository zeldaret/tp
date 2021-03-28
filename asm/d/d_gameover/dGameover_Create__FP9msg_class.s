lbl_8019BFA4:
/* 8019BFA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019BFA8  7C 08 02 A6 */	mflr r0
/* 8019BFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019BFB0  4B FF F0 95 */	bl _create__11dGameover_cFv
/* 8019BFB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019BFB8  7C 08 03 A6 */	mtlr r0
/* 8019BFBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8019BFC0  4E 80 00 20 */	blr 
