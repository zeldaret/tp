lbl_801AF084:
/* 801AF084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AF088  7C 08 02 A6 */	mflr r0
/* 801AF08C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AF090  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AF094  7C 7F 1B 78 */	mr r31, r3
/* 801AF098  38 80 04 08 */	li r4, 0x408
/* 801AF09C  48 00 06 9D */	bl setAButtonString__19dMenu_Calibration_cFUs
/* 801AF0A0  7F E3 FB 78 */	mr r3, r31
/* 801AF0A4  38 80 05 61 */	li r4, 0x561
/* 801AF0A8  48 00 07 41 */	bl setBButtonString__19dMenu_Calibration_cFUs
/* 801AF0AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AF0B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AF0B4  7C 08 03 A6 */	mtlr r0
/* 801AF0B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801AF0BC  4E 80 00 20 */	blr 
