lbl_80B0BD04:
/* 80B0BD04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0BD08  7C 08 02 A6 */	mflr r0
/* 80B0BD0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0BD10  4B FF FE B9 */	bl CreateHeap__10daNPC_TK_cFv
/* 80B0BD14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0BD18  7C 08 03 A6 */	mtlr r0
/* 80B0BD1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0BD20  4E 80 00 20 */	blr 
