lbl_805AA17C:
/* 805AA17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA180  7C 08 02 A6 */	mflr r0
/* 805AA184  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA188  4B FF FE FD */	bl CreateHeap__6daDr_cFv
/* 805AA18C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA190  7C 08 03 A6 */	mtlr r0
/* 805AA194  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA198  4E 80 00 20 */	blr 
