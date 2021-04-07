lbl_8024ED4C:
/* 8024ED4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8024ED50  7C 08 02 A6 */	mflr r0
/* 8024ED54  90 01 00 34 */	stw r0, 0x34(r1)
/* 8024ED58  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8024ED5C  7C 7F 1B 78 */	mr r31, r3
/* 8024ED60  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 8024ED64  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 8024ED68  80 04 00 34 */	lwz r0, 0x34(r4)
/* 8024ED6C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8024ED70  41 82 00 0C */	beq lbl_8024ED7C
/* 8024ED74  48 00 07 E9 */	bl selectMojiSet__7dName_cFv
/* 8024ED78  48 00 02 A8 */	b lbl_8024F020
lbl_8024ED7C:
/* 8024ED7C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024ED80  4B DE 37 29 */	bl checkRightTrigger__9STControlFv
/* 8024ED84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8024ED88  41 82 00 7C */	beq lbl_8024EE04
/* 8024ED8C  38 00 00 B0 */	li r0, 0xb0
/* 8024ED90  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8024ED94  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024ED98  38 81 00 1C */	addi r4, r1, 0x1c
/* 8024ED9C  38 A0 00 00 */	li r5, 0
/* 8024EDA0  38 C0 00 00 */	li r6, 0
/* 8024EDA4  38 E0 00 00 */	li r7, 0
/* 8024EDA8  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024EDAC  FC 40 08 90 */	fmr f2, f1
/* 8024EDB0  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024EDB4  FC 80 18 90 */	fmr f4, f3
/* 8024EDB8  39 00 00 00 */	li r8, 0
/* 8024EDBC  48 05 CB C9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024EDC0  88 1F 02 A5 */	lbz r0, 0x2a5(r31)
/* 8024EDC4  98 1F 02 A6 */	stb r0, 0x2a6(r31)
/* 8024EDC8  88 1F 02 A7 */	lbz r0, 0x2a7(r31)
/* 8024EDCC  98 1F 02 A8 */	stb r0, 0x2a8(r31)
/* 8024EDD0  88 7F 02 A5 */	lbz r3, 0x2a5(r31)
/* 8024EDD4  38 03 00 01 */	addi r0, r3, 1
/* 8024EDD8  98 1F 02 A5 */	stb r0, 0x2a5(r31)
/* 8024EDDC  88 1F 02 A5 */	lbz r0, 0x2a5(r31)
/* 8024EDE0  28 00 00 0C */	cmplwi r0, 0xc
/* 8024EDE4  40 81 00 0C */	ble lbl_8024EDF0
/* 8024EDE8  38 00 00 00 */	li r0, 0
/* 8024EDEC  98 1F 02 A5 */	stb r0, 0x2a5(r31)
lbl_8024EDF0:
/* 8024EDF0  7F E3 FB 78 */	mr r3, r31
/* 8024EDF4  48 00 02 41 */	bl MojiSelectAnmInit__7dName_cFv
/* 8024EDF8  38 00 00 01 */	li r0, 1
/* 8024EDFC  98 1F 02 AB */	stb r0, 0x2ab(r31)
/* 8024EE00  48 00 02 20 */	b lbl_8024F020
lbl_8024EE04:
/* 8024EE04  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024EE08  4B DE 36 25 */	bl checkLeftTrigger__9STControlFv
/* 8024EE0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8024EE10  41 82 00 7C */	beq lbl_8024EE8C
/* 8024EE14  38 00 00 B0 */	li r0, 0xb0
/* 8024EE18  90 01 00 18 */	stw r0, 0x18(r1)
/* 8024EE1C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024EE20  38 81 00 18 */	addi r4, r1, 0x18
/* 8024EE24  38 A0 00 00 */	li r5, 0
/* 8024EE28  38 C0 00 00 */	li r6, 0
/* 8024EE2C  38 E0 00 00 */	li r7, 0
/* 8024EE30  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024EE34  FC 40 08 90 */	fmr f2, f1
/* 8024EE38  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024EE3C  FC 80 18 90 */	fmr f4, f3
/* 8024EE40  39 00 00 00 */	li r8, 0
/* 8024EE44  48 05 CB 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024EE48  88 1F 02 A5 */	lbz r0, 0x2a5(r31)
/* 8024EE4C  98 1F 02 A6 */	stb r0, 0x2a6(r31)
/* 8024EE50  88 1F 02 A7 */	lbz r0, 0x2a7(r31)
/* 8024EE54  98 1F 02 A8 */	stb r0, 0x2a8(r31)
/* 8024EE58  88 7F 02 A5 */	lbz r3, 0x2a5(r31)
/* 8024EE5C  28 03 00 00 */	cmplwi r3, 0
/* 8024EE60  40 82 00 10 */	bne lbl_8024EE70
/* 8024EE64  38 00 00 0C */	li r0, 0xc
/* 8024EE68  98 1F 02 A5 */	stb r0, 0x2a5(r31)
/* 8024EE6C  48 00 00 0C */	b lbl_8024EE78
lbl_8024EE70:
/* 8024EE70  38 03 FF FF */	addi r0, r3, -1
/* 8024EE74  98 1F 02 A5 */	stb r0, 0x2a5(r31)
lbl_8024EE78:
/* 8024EE78  7F E3 FB 78 */	mr r3, r31
/* 8024EE7C  48 00 01 B9 */	bl MojiSelectAnmInit__7dName_cFv
/* 8024EE80  38 00 00 01 */	li r0, 1
/* 8024EE84  98 1F 02 AB */	stb r0, 0x2ab(r31)
/* 8024EE88  48 00 01 98 */	b lbl_8024F020
lbl_8024EE8C:
/* 8024EE8C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024EE90  4B DE 36 95 */	bl checkUpTrigger__9STControlFv
/* 8024EE94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8024EE98  41 82 00 BC */	beq lbl_8024EF54
/* 8024EE9C  88 1F 02 A5 */	lbz r0, 0x2a5(r31)
/* 8024EEA0  98 1F 02 A6 */	stb r0, 0x2a6(r31)
/* 8024EEA4  88 1F 02 A7 */	lbz r0, 0x2a7(r31)
/* 8024EEA8  98 1F 02 A8 */	stb r0, 0x2a8(r31)
/* 8024EEAC  7F E3 FB 78 */	mr r3, r31
/* 8024EEB0  48 00 01 85 */	bl MojiSelectAnmInit__7dName_cFv
/* 8024EEB4  88 1F 02 A7 */	lbz r0, 0x2a7(r31)
/* 8024EEB8  28 00 00 00 */	cmplwi r0, 0
/* 8024EEBC  40 82 00 4C */	bne lbl_8024EF08
/* 8024EEC0  38 00 00 4C */	li r0, 0x4c
/* 8024EEC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024EEC8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024EECC  38 81 00 14 */	addi r4, r1, 0x14
/* 8024EED0  38 A0 00 00 */	li r5, 0
/* 8024EED4  38 C0 00 00 */	li r6, 0
/* 8024EED8  38 E0 00 00 */	li r7, 0
/* 8024EEDC  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024EEE0  FC 40 08 90 */	fmr f2, f1
/* 8024EEE4  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024EEE8  FC 80 18 90 */	fmr f4, f3
/* 8024EEEC  39 00 00 00 */	li r8, 0
/* 8024EEF0  48 05 CA 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024EEF4  7F E3 FB 78 */	mr r3, r31
/* 8024EEF8  48 00 0B FD */	bl menuCursorPosSet__7dName_cFv
/* 8024EEFC  38 00 00 02 */	li r0, 2
/* 8024EF00  98 1F 02 AB */	stb r0, 0x2ab(r31)
/* 8024EF04  48 00 01 1C */	b lbl_8024F020
lbl_8024EF08:
/* 8024EF08  38 00 00 B0 */	li r0, 0xb0
/* 8024EF0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8024EF10  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024EF14  38 81 00 10 */	addi r4, r1, 0x10
/* 8024EF18  38 A0 00 00 */	li r5, 0
/* 8024EF1C  38 C0 00 00 */	li r6, 0
/* 8024EF20  38 E0 00 00 */	li r7, 0
/* 8024EF24  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024EF28  FC 40 08 90 */	fmr f2, f1
/* 8024EF2C  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024EF30  FC 80 18 90 */	fmr f4, f3
/* 8024EF34  39 00 00 00 */	li r8, 0
/* 8024EF38  48 05 CA 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024EF3C  88 7F 02 A7 */	lbz r3, 0x2a7(r31)
/* 8024EF40  38 03 FF FF */	addi r0, r3, -1
/* 8024EF44  98 1F 02 A7 */	stb r0, 0x2a7(r31)
/* 8024EF48  38 00 00 01 */	li r0, 1
/* 8024EF4C  98 1F 02 AB */	stb r0, 0x2ab(r31)
/* 8024EF50  48 00 00 D0 */	b lbl_8024F020
lbl_8024EF54:
/* 8024EF54  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024EF58  4B DE 36 49 */	bl checkDownTrigger__9STControlFv
/* 8024EF5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8024EF60  41 82 00 C0 */	beq lbl_8024F020
/* 8024EF64  88 1F 02 A5 */	lbz r0, 0x2a5(r31)
/* 8024EF68  98 1F 02 A6 */	stb r0, 0x2a6(r31)
/* 8024EF6C  88 1F 02 A7 */	lbz r0, 0x2a7(r31)
/* 8024EF70  98 1F 02 A8 */	stb r0, 0x2a8(r31)
/* 8024EF74  7F E3 FB 78 */	mr r3, r31
/* 8024EF78  48 00 00 BD */	bl MojiSelectAnmInit__7dName_cFv
/* 8024EF7C  88 7F 02 A7 */	lbz r3, 0x2a7(r31)
/* 8024EF80  38 03 00 01 */	addi r0, r3, 1
/* 8024EF84  98 1F 02 A7 */	stb r0, 0x2a7(r31)
/* 8024EF88  88 1F 02 A7 */	lbz r0, 0x2a7(r31)
/* 8024EF8C  28 00 00 04 */	cmplwi r0, 4
/* 8024EF90  40 81 00 54 */	ble lbl_8024EFE4
/* 8024EF94  38 00 00 04 */	li r0, 4
/* 8024EF98  98 1F 02 A7 */	stb r0, 0x2a7(r31)
/* 8024EF9C  38 00 00 4C */	li r0, 0x4c
/* 8024EFA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024EFA4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024EFA8  38 81 00 0C */	addi r4, r1, 0xc
/* 8024EFAC  38 A0 00 00 */	li r5, 0
/* 8024EFB0  38 C0 00 00 */	li r6, 0
/* 8024EFB4  38 E0 00 00 */	li r7, 0
/* 8024EFB8  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024EFBC  FC 40 08 90 */	fmr f2, f1
/* 8024EFC0  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024EFC4  FC 80 18 90 */	fmr f4, f3
/* 8024EFC8  39 00 00 00 */	li r8, 0
/* 8024EFCC  48 05 C9 B9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024EFD0  7F E3 FB 78 */	mr r3, r31
/* 8024EFD4  48 00 0B 21 */	bl menuCursorPosSet__7dName_cFv
/* 8024EFD8  38 00 00 02 */	li r0, 2
/* 8024EFDC  98 1F 02 AB */	stb r0, 0x2ab(r31)
/* 8024EFE0  48 00 00 40 */	b lbl_8024F020
lbl_8024EFE4:
/* 8024EFE4  38 00 00 B0 */	li r0, 0xb0
/* 8024EFE8  90 01 00 08 */	stw r0, 8(r1)
/* 8024EFEC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024EFF0  38 81 00 08 */	addi r4, r1, 8
/* 8024EFF4  38 A0 00 00 */	li r5, 0
/* 8024EFF8  38 C0 00 00 */	li r6, 0
/* 8024EFFC  38 E0 00 00 */	li r7, 0
/* 8024F000  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024F004  FC 40 08 90 */	fmr f2, f1
/* 8024F008  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024F00C  FC 80 18 90 */	fmr f4, f3
/* 8024F010  39 00 00 00 */	li r8, 0
/* 8024F014  48 05 C9 71 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024F018  38 00 00 01 */	li r0, 1
/* 8024F01C  98 1F 02 AB */	stb r0, 0x2ab(r31)
lbl_8024F020:
/* 8024F020  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8024F024  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8024F028  7C 08 03 A6 */	mtlr r0
/* 8024F02C  38 21 00 30 */	addi r1, r1, 0x30
/* 8024F030  4E 80 00 20 */	blr 
