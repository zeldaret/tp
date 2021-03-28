lbl_805A3658:
/* 805A3658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A365C  7C 08 02 A6 */	mflr r0
/* 805A3660  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3664  4B FF FF 2D */	bl execute__13daTagGstart_cFv
/* 805A3668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A366C  7C 08 03 A6 */	mtlr r0
/* 805A3670  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3674  4E 80 00 20 */	blr 
