lbl_80BB6838:
/* 80BB6838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB683C  7C 08 02 A6 */	mflr r0
/* 80BB6840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6844  48 00 07 91 */	bl createHeap__11daBkyRock_cFv
/* 80BB6848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB684C  7C 08 03 A6 */	mtlr r0
/* 80BB6850  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6854  4E 80 00 20 */	blr 
