lbl_80CCB344:
/* 80CCB344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCB348  7C 08 02 A6 */	mflr r0
/* 80CCB34C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCB350  48 00 01 9D */	bl createHeap__17daObjSCannonTen_cFv
/* 80CCB354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCB358  7C 08 03 A6 */	mtlr r0
/* 80CCB35C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCB360  4E 80 00 20 */	blr 
