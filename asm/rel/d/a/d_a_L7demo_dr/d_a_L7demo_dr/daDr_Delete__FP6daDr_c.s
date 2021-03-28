lbl_805AA064:
/* 805AA064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA068  7C 08 02 A6 */	mflr r0
/* 805AA06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA070  4B FF FF 8D */	bl _delete__6daDr_cFv
/* 805AA074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA078  7C 08 03 A6 */	mtlr r0
/* 805AA07C  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA080  4E 80 00 20 */	blr 
