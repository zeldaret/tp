lbl_80C952D8:
/* 80C952D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C952DC  7C 08 02 A6 */	mflr r0
/* 80C952E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C952E4  4B FF F3 05 */	bl CreateHeap__11daObj_Mie_cFv
/* 80C952E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C952EC  7C 08 03 A6 */	mtlr r0
/* 80C952F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C952F4  4E 80 00 20 */	blr 
