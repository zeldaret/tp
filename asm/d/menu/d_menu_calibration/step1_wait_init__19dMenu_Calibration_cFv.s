lbl_801AEE30:
/* 801AEE30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801AEE34  7C 08 02 A6 */	mflr r0
/* 801AEE38  90 01 00 34 */	stw r0, 0x34(r1)
/* 801AEE3C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801AEE40  7C 7F 1B 78 */	mr r31, r3
/* 801AEE44  38 00 00 00 */	li r0, 0
/* 801AEE48  B0 03 00 FA */	sth r0, 0xfa(r3)
/* 801AEE4C  38 80 00 00 */	li r4, 0
/* 801AEE50  48 00 08 E9 */	bl setAButtonString__19dMenu_Calibration_cFUs
/* 801AEE54  7F E3 FB 78 */	mr r3, r31
/* 801AEE58  38 80 00 00 */	li r4, 0
/* 801AEE5C  48 00 09 8D */	bl setBButtonString__19dMenu_Calibration_cFUs
/* 801AEE60  7F E3 FB 78 */	mr r3, r31
/* 801AEE64  38 80 04 D8 */	li r4, 0x4d8
/* 801AEE68  48 00 0A 31 */	bl setStepString__19dMenu_Calibration_cFUs
/* 801AEE6C  7F E3 FB 78 */	mr r3, r31
/* 801AEE70  38 80 04 DD */	li r4, 0x4dd
/* 801AEE74  48 00 0A D5 */	bl setExplainString__19dMenu_Calibration_cFUs
/* 801AEE78  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 801AEE7C  54 00 18 38 */	slwi r0, r0, 3
/* 801AEE80  7C 9F 02 14 */	add r4, r31, r0
/* 801AEE84  80 64 00 BC */	lwz r3, 0xbc(r4)
/* 801AEE88  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 801AEE8C  90 61 00 08 */	stw r3, 8(r1)
/* 801AEE90  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AEE94  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 801AEE98  80 63 00 04 */	lwz r3, 4(r3)
/* 801AEE9C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 801AEEA0  C0 21 00 08 */	lfs f1, 8(r1)
/* 801AEEA4  C0 02 A5 10 */	lfs f0, lit_3847(r2)
/* 801AEEA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AEEAC  40 81 00 08 */	ble lbl_801AEEB4
/* 801AEEB0  48 00 00 08 */	b lbl_801AEEB8
lbl_801AEEB4:
/* 801AEEB4  FC 20 00 90 */	fmr f1, f0
lbl_801AEEB8:
/* 801AEEB8  D0 23 01 1C */	stfs f1, 0x11c(r3)
/* 801AEEBC  C0 02 A5 10 */	lfs f0, lit_3847(r2)
/* 801AEEC0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801AEEC4  40 81 00 08 */	ble lbl_801AEECC
/* 801AEEC8  48 00 00 08 */	b lbl_801AEED0
lbl_801AEECC:
/* 801AEECC  FC 40 00 90 */	fmr f2, f0
lbl_801AEED0:
/* 801AEED0  D0 43 01 20 */	stfs f2, 0x120(r3)
/* 801AEED4  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 801AEED8  54 00 10 3A */	slwi r0, r0, 2
/* 801AEEDC  7C 7F 02 14 */	add r3, r31, r0
/* 801AEEE0  80 83 00 70 */	lwz r4, 0x70(r3)
/* 801AEEE4  38 61 00 10 */	addi r3, r1, 0x10
/* 801AEEE8  80 A4 00 04 */	lwz r5, 4(r4)
/* 801AEEEC  38 C0 00 00 */	li r6, 0
/* 801AEEF0  38 E0 00 00 */	li r7, 0
/* 801AEEF4  48 0A 5F C9 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801AEEF8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801AEEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AEF00  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801AEF04  90 01 00 20 */	stw r0, 0x20(r1)
/* 801AEF08  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801AEF0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AEF10  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 801AEF14  54 00 10 3A */	slwi r0, r0, 2
/* 801AEF18  7C 7F 02 14 */	add r3, r31, r0
/* 801AEF1C  80 63 00 70 */	lwz r3, 0x70(r3)
/* 801AEF20  80 83 00 04 */	lwz r4, 4(r3)
/* 801AEF24  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 801AEF28  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801AEF2C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801AEF30  38 A0 00 00 */	li r5, 0
/* 801AEF34  4B FE 61 C1 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801AEF38  38 00 00 00 */	li r0, 0
/* 801AEF3C  B0 1F 00 FC */	sth r0, 0xfc(r31)
/* 801AEF40  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 801AEF44  C0 22 A5 10 */	lfs f1, lit_3847(r2)
/* 801AEF48  48 0A 68 89 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AEF4C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801AEF50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801AEF54  7C 08 03 A6 */	mtlr r0
/* 801AEF58  38 21 00 30 */	addi r1, r1, 0x30
/* 801AEF5C  4E 80 00 20 */	blr 
