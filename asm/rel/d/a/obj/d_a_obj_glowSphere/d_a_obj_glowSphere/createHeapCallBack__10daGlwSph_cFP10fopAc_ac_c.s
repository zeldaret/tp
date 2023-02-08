lbl_80BF94AC:
/* 80BF94AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF94B0  7C 08 02 A6 */	mflr r0
/* 80BF94B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF94B8  48 00 00 15 */	bl CreateHeap__10daGlwSph_cFv
/* 80BF94BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF94C0  7C 08 03 A6 */	mtlr r0
/* 80BF94C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF94C8  4E 80 00 20 */	blr 
