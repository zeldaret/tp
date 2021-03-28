lbl_80847670:
/* 80847670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80847674  7C 08 02 A6 */	mflr r0
/* 80847678  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084767C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80847680  7C 7F 1B 78 */	mr r31, r3
/* 80847684  38 80 00 2F */	li r4, 0x2f
/* 80847688  4B FF FE ED */	bl setEyeBtp__11daHoZelda_cFUs
/* 8084768C  7F E3 FB 78 */	mr r3, r31
/* 80847690  38 80 00 26 */	li r4, 0x26
/* 80847694  38 A0 00 00 */	li r5, 0
/* 80847698  4B FF FF 59 */	bl setEyeBtk__11daHoZelda_cFUsUc
/* 8084769C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808476A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808476A4  7C 08 03 A6 */	mtlr r0
/* 808476A8  38 21 00 10 */	addi r1, r1, 0x10
/* 808476AC  4E 80 00 20 */	blr 
