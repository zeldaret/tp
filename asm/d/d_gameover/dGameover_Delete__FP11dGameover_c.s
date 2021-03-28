lbl_8019BF84:
/* 8019BF84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019BF88  7C 08 02 A6 */	mflr r0
/* 8019BF8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019BF90  4B FF F8 D5 */	bl _delete__11dGameover_cFv
/* 8019BF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019BF98  7C 08 03 A6 */	mtlr r0
/* 8019BF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8019BFA0  4E 80 00 20 */	blr 
