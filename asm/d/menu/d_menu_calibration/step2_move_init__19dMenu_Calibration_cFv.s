lbl_801AF380:
/* 801AF380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AF384  7C 08 02 A6 */	mflr r0
/* 801AF388  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AF38C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AF390  7C 7F 1B 78 */	mr r31, r3
/* 801AF394  38 80 04 08 */	li r4, 0x408
/* 801AF398  48 00 03 A1 */	bl setAButtonString__19dMenu_Calibration_cFUs
/* 801AF39C  7F E3 FB 78 */	mr r3, r31
/* 801AF3A0  38 80 03 F9 */	li r4, 0x3f9
/* 801AF3A4  48 00 04 45 */	bl setBButtonString__19dMenu_Calibration_cFUs
/* 801AF3A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AF3AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AF3B0  7C 08 03 A6 */	mtlr r0
/* 801AF3B4  38 21 00 10 */	addi r1, r1, 0x10
/* 801AF3B8  4E 80 00 20 */	blr 
