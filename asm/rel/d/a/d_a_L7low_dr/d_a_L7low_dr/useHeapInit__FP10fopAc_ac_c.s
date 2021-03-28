lbl_805AAC3C:
/* 805AAC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AAC40  7C 08 02 A6 */	mflr r0
/* 805AAC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AAC48  48 00 00 15 */	bl CreateHeap__11daL7lowDr_cFv
/* 805AAC4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AAC50  7C 08 03 A6 */	mtlr r0
/* 805AAC54  38 21 00 10 */	addi r1, r1, 0x10
/* 805AAC58  4E 80 00 20 */	blr 
