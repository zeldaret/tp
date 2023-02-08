lbl_805C5954:
/* 805C5954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C5958  7C 08 02 A6 */	mflr r0
/* 805C595C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C5960  4B FF FD 45 */	bl CreateHeap__8daB_DR_cFv
/* 805C5964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C5968  7C 08 03 A6 */	mtlr r0
/* 805C596C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C5970  4E 80 00 20 */	blr 
