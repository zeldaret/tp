lbl_80C95F50:
/* 80C95F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95F54  7C 08 02 A6 */	mflr r0
/* 80C95F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C95F5C  48 00 00 15 */	bl CreateHeap__18daObjMirror6Pole_cFv
/* 80C95F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C95F64  7C 08 03 A6 */	mtlr r0
/* 80C95F68  38 21 00 10 */	addi r1, r1, 0x10
/* 80C95F6C  4E 80 00 20 */	blr 
