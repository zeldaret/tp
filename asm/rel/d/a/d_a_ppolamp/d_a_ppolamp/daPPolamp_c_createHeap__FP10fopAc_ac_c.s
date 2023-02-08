lbl_80D4C938:
/* 80D4C938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4C93C  7C 08 02 A6 */	mflr r0
/* 80D4C940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4C944  48 00 05 59 */	bl createHeap__11daPPolamp_cFv
/* 80D4C948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4C94C  7C 08 03 A6 */	mtlr r0
/* 80D4C950  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4C954  4E 80 00 20 */	blr 
