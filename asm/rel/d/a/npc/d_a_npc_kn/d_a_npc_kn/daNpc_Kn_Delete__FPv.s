lbl_80A38470:
/* 80A38470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A38474  7C 08 02 A6 */	mflr r0
/* 80A38478  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3847C  4B FF 31 A5 */	bl Delete__10daNpc_Kn_cFv
/* 80A38480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A38484  7C 08 03 A6 */	mtlr r0
/* 80A38488  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3848C  4E 80 00 20 */	blr 
