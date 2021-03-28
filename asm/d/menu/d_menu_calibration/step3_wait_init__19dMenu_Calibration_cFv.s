lbl_801AF488:
/* 801AF488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AF48C  7C 08 02 A6 */	mflr r0
/* 801AF490  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AF494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AF498  7C 7F 1B 78 */	mr r31, r3
/* 801AF49C  38 00 00 00 */	li r0, 0
/* 801AF4A0  B0 03 00 FA */	sth r0, 0xfa(r3)
/* 801AF4A4  38 80 00 00 */	li r4, 0
/* 801AF4A8  48 00 02 91 */	bl setAButtonString__19dMenu_Calibration_cFUs
/* 801AF4AC  7F E3 FB 78 */	mr r3, r31
/* 801AF4B0  38 80 00 00 */	li r4, 0
/* 801AF4B4  48 00 03 35 */	bl setBButtonString__19dMenu_Calibration_cFUs
/* 801AF4B8  7F E3 FB 78 */	mr r3, r31
/* 801AF4BC  38 80 04 DC */	li r4, 0x4dc
/* 801AF4C0  48 00 03 D9 */	bl setStepString__19dMenu_Calibration_cFUs
/* 801AF4C4  7F E3 FB 78 */	mr r3, r31
/* 801AF4C8  38 80 04 DB */	li r4, 0x4db
/* 801AF4CC  48 00 04 7D */	bl setExplainString__19dMenu_Calibration_cFUs
/* 801AF4D0  38 00 00 00 */	li r0, 0
/* 801AF4D4  B0 1F 00 FC */	sth r0, 0xfc(r31)
/* 801AF4D8  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 801AF4DC  C0 22 A5 10 */	lfs f1, lit_3847(r2)
/* 801AF4E0  48 0A 62 F1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF4E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AF4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AF4EC  7C 08 03 A6 */	mtlr r0
/* 801AF4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801AF4F4  4E 80 00 20 */	blr 
