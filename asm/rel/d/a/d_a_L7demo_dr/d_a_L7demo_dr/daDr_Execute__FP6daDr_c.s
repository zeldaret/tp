lbl_805A9FD4:
/* 805A9FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A9FD8  7C 08 02 A6 */	mflr r0
/* 805A9FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A9FE0  4B FF FF 05 */	bl execute__6daDr_cFv
/* 805A9FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A9FE8  7C 08 03 A6 */	mtlr r0
/* 805A9FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A9FF0  4E 80 00 20 */	blr 
