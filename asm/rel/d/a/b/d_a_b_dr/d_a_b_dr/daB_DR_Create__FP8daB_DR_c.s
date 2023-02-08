lbl_805C6B2C:
/* 805C6B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C6B30  7C 08 02 A6 */	mflr r0
/* 805C6B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C6B38  4B FF EE 3D */	bl create__8daB_DR_cFv
/* 805C6B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C6B40  7C 08 03 A6 */	mtlr r0
/* 805C6B44  38 21 00 10 */	addi r1, r1, 0x10
/* 805C6B48  4E 80 00 20 */	blr 
