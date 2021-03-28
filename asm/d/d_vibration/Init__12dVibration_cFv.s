lbl_8006FF04:
/* 8006FF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006FF08  7C 08 02 A6 */	mflr r0
/* 8006FF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006FF10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006FF14  7C 7F 1B 78 */	mr r31, r3
/* 8006FF18  4B FF FE E9 */	bl Kill__12dVibration_cFv
/* 8006FF1C  7F E3 FB 78 */	mr r3, r31
/* 8006FF20  4B FF FF 65 */	bl setDefault__12dVibration_cFv
/* 8006FF24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006FF28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006FF2C  7C 08 03 A6 */	mtlr r0
/* 8006FF30  38 21 00 10 */	addi r1, r1, 0x10
/* 8006FF34  4E 80 00 20 */	blr 
