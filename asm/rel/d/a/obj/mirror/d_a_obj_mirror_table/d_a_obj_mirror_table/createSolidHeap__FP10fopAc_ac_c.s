lbl_80C99918:
/* 80C99918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9991C  7C 08 02 A6 */	mflr r0
/* 80C99920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C99924  48 00 00 15 */	bl createHeap__18daObjMirrorTable_cFv
/* 80C99928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9992C  7C 08 03 A6 */	mtlr r0
/* 80C99930  38 21 00 10 */	addi r1, r1, 0x10
/* 80C99934  4E 80 00 20 */	blr 
