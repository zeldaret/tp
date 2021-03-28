lbl_801AF188:
/* 801AF188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AF18C  7C 08 02 A6 */	mflr r0
/* 801AF190  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AF194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AF198  7C 7F 1B 78 */	mr r31, r3
/* 801AF19C  38 00 00 00 */	li r0, 0
/* 801AF1A0  B0 03 00 FA */	sth r0, 0xfa(r3)
/* 801AF1A4  38 80 00 00 */	li r4, 0
/* 801AF1A8  48 00 05 91 */	bl setAButtonString__19dMenu_Calibration_cFUs
/* 801AF1AC  7F E3 FB 78 */	mr r3, r31
/* 801AF1B0  38 80 00 00 */	li r4, 0
/* 801AF1B4  48 00 06 35 */	bl setBButtonString__19dMenu_Calibration_cFUs
/* 801AF1B8  7F E3 FB 78 */	mr r3, r31
/* 801AF1BC  38 80 04 DA */	li r4, 0x4da
/* 801AF1C0  48 00 06 D9 */	bl setStepString__19dMenu_Calibration_cFUs
/* 801AF1C4  7F E3 FB 78 */	mr r3, r31
/* 801AF1C8  38 80 04 D9 */	li r4, 0x4d9
/* 801AF1CC  48 00 07 7D */	bl setExplainString__19dMenu_Calibration_cFUs
/* 801AF1D0  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 801AF1D4  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 801AF1D8  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 801AF1DC  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801AF1E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AF1E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AF1E8  7C 08 03 A6 */	mtlr r0
/* 801AF1EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801AF1F0  4E 80 00 20 */	blr 
