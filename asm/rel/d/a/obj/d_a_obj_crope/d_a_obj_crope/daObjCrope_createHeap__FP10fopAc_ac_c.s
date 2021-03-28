lbl_80BCCD44:
/* 80BCCD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCCD48  7C 08 02 A6 */	mflr r0
/* 80BCCD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCCD50  4B FF FF 89 */	bl createHeap__12daObjCrope_cFv
/* 80BCCD54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCCD58  7C 08 03 A6 */	mtlr r0
/* 80BCCD5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCCD60  4E 80 00 20 */	blr 
