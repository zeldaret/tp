lbl_80AABE24:
/* 80AABE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AABE28  7C 08 02 A6 */	mflr r0
/* 80AABE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AABE30  4B FF D8 05 */	bl Delete__12daNpc_Post_cFv
/* 80AABE34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AABE38  7C 08 03 A6 */	mtlr r0
/* 80AABE3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AABE40  4E 80 00 20 */	blr 
