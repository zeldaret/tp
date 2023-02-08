lbl_80D2C838:
/* 80D2C838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2C83C  7C 08 02 A6 */	mflr r0
/* 80D2C840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2C844  48 00 00 15 */	bl CreateHeap__12daWtPillar_cFv
/* 80D2C848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2C84C  7C 08 03 A6 */	mtlr r0
/* 80D2C850  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2C854  4E 80 00 20 */	blr 
