lbl_801AF5F4:
/* 801AF5F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AF5F8  7C 08 02 A6 */	mflr r0
/* 801AF5FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AF600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AF604  7C 7F 1B 78 */	mr r31, r3
/* 801AF608  38 80 05 62 */	li r4, 0x562
/* 801AF60C  48 00 01 2D */	bl setAButtonString__19dMenu_Calibration_cFUs
/* 801AF610  7F E3 FB 78 */	mr r3, r31
/* 801AF614  38 80 03 F9 */	li r4, 0x3f9
/* 801AF618  48 00 01 D1 */	bl setBButtonString__19dMenu_Calibration_cFUs
/* 801AF61C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AF620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AF624  7C 08 03 A6 */	mtlr r0
/* 801AF628  38 21 00 10 */	addi r1, r1, 0x10
/* 801AF62C  4E 80 00 20 */	blr 
