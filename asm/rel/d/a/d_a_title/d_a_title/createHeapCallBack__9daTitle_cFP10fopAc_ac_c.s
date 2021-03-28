lbl_80D66E7C:
/* 80D66E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D66E80  7C 08 02 A6 */	mflr r0
/* 80D66E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66E88  4B FF FC CD */	bl CreateHeap__9daTitle_cFv
/* 80D66E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D66E90  7C 08 03 A6 */	mtlr r0
/* 80D66E94  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66E98  4E 80 00 20 */	blr 
