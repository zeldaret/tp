lbl_80D379F8:
/* 80D379F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D379FC  7C 08 02 A6 */	mflr r0
/* 80D37A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D37A04  48 00 00 F1 */	bl createHeap__13daWindStone_cFv
/* 80D37A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D37A0C  7C 08 03 A6 */	mtlr r0
/* 80D37A10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D37A14  4E 80 00 20 */	blr 
