lbl_80D42658:
/* 80D42658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4265C  7C 08 02 A6 */	mflr r0
/* 80D42660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D42664  48 00 02 19 */	bl CreateHeap__14daObjZraMark_cFv
/* 80D42668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4266C  7C 08 03 A6 */	mtlr r0
/* 80D42670  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42674  4E 80 00 20 */	blr 
