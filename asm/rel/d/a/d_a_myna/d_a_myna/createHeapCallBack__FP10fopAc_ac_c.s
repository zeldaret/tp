lbl_80945C6C:
/* 80945C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80945C70  7C 08 02 A6 */	mflr r0
/* 80945C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80945C78  48 00 0A 61 */	bl createHeap__8daMyna_cFv
/* 80945C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80945C80  7C 08 03 A6 */	mtlr r0
/* 80945C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80945C88  4E 80 00 20 */	blr 
