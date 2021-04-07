lbl_8050ED28:
/* 8050ED28  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8050ED2C  7C 08 02 A6 */	mflr r0
/* 8050ED30  90 01 00 54 */	stw r0, 0x54(r1)
/* 8050ED34  39 61 00 50 */	addi r11, r1, 0x50
/* 8050ED38  4B E5 34 9D */	bl _savegpr_27
/* 8050ED3C  7C 7D 1B 78 */	mr r29, r3
/* 8050ED40  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 8050ED44  3B E3 85 84 */	addi r31, r3, lit_4208@l /* 0x80518584@l */
/* 8050ED48  3B 80 00 00 */	li r28, 0
/* 8050ED4C  38 00 00 0E */	li r0, 0xe
/* 8050ED50  7C 09 03 A6 */	mtctr r0
lbl_8050ED54:
/* 8050ED54  38 1C 07 0C */	addi r0, r28, 0x70c
/* 8050ED58  7C 1D 00 AE */	lbzx r0, r29, r0
/* 8050ED5C  7C 00 07 75 */	extsb. r0, r0
/* 8050ED60  40 82 01 40 */	bne lbl_8050EEA0
/* 8050ED64  38 00 00 01 */	li r0, 1
/* 8050ED68  7C 7D E2 14 */	add r3, r29, r28
/* 8050ED6C  98 03 07 0C */	stb r0, 0x70c(r3)
/* 8050ED70  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070137@ha */
/* 8050ED74  38 03 01 37 */	addi r0, r3, 0x0137 /* 0x00070137@l */
/* 8050ED78  90 01 00 08 */	stw r0, 8(r1)
/* 8050ED7C  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 8050ED80  38 81 00 08 */	addi r4, r1, 8
/* 8050ED84  38 A0 00 00 */	li r5, 0
/* 8050ED88  38 C0 FF FF */	li r6, -1
/* 8050ED8C  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 8050ED90  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8050ED94  7D 89 03 A6 */	mtctr r12
/* 8050ED98  4E 80 04 21 */	bctrl 
/* 8050ED9C  38 61 00 0C */	addi r3, r1, 0xc
/* 8050EDA0  1C 1C 00 0C */	mulli r0, r28, 0xc
/* 8050EDA4  7F 7D 02 14 */	add r27, r29, r0
/* 8050EDA8  3B DB 07 1C */	addi r30, r27, 0x71c
/* 8050EDAC  7F C4 F3 78 */	mr r4, r30
/* 8050EDB0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8050EDB4  4B D5 7D 81 */	bl __mi__4cXyzCFRC3Vec
/* 8050EDB8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8050EDBC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8050EDC0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8050EDC4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050EDC8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8050EDCC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8050EDD0  4B D5 88 A5 */	bl cM_atan2s__Fff
/* 8050EDD4  7C 64 1B 78 */	mr r4, r3
/* 8050EDD8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8050EDDC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8050EDE0  80 63 00 00 */	lwz r3, 0(r3)
/* 8050EDE4  4B AF D5 F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 8050EDE8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050EDEC  4B D5 8B A1 */	bl cM_rndFX__Ff
/* 8050EDF0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8050EDF4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050EDF8  4B D5 8B 5D */	bl cM_rndF__Ff
/* 8050EDFC  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8050EE00  EC 00 08 2A */	fadds f0, f0, f1
/* 8050EE04  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050EE08  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050EE0C  4B D5 8B 49 */	bl cM_rndF__Ff
/* 8050EE10  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8050EE14  EC 00 08 2A */	fadds f0, f0, f1
/* 8050EE18  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8050EE1C  38 61 00 18 */	addi r3, r1, 0x18
/* 8050EE20  38 9B 07 C4 */	addi r4, r27, 0x7c4
/* 8050EE24  4B D6 20 C9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8050EE28  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8050EE2C  4B D5 8B 29 */	bl cM_rndF__Ff
/* 8050EE30  FC 00 08 1E */	fctiwz f0, f1
/* 8050EE34  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8050EE38  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8050EE3C  1F 7C 00 06 */	mulli r27, r28, 6
/* 8050EE40  7C 7D DA 14 */	add r3, r29, r27
/* 8050EE44  B0 03 08 6E */	sth r0, 0x86e(r3)
/* 8050EE48  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8050EE4C  4B D5 8B 09 */	bl cM_rndF__Ff
/* 8050EE50  FC 00 08 1E */	fctiwz f0, f1
/* 8050EE54  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8050EE58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050EE5C  7C 7D DA 14 */	add r3, r29, r27
/* 8050EE60  B0 03 08 6C */	sth r0, 0x86c(r3)
/* 8050EE64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050EE68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050EE6C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8050EE70  88 1D 12 57 */	lbz r0, 0x1257(r29)
/* 8050EE74  7C 00 07 75 */	extsb. r0, r0
/* 8050EE78  38 80 00 01 */	li r4, 1
/* 8050EE7C  41 82 00 08 */	beq lbl_8050EE84
/* 8050EE80  38 80 00 03 */	li r4, 3
lbl_8050EE84:
/* 8050EE84  7F A5 EB 78 */	mr r5, r29
/* 8050EE88  7F C6 F3 78 */	mr r6, r30
/* 8050EE8C  38 FD 04 E4 */	addi r7, r29, 0x4e4
/* 8050EE90  39 00 00 00 */	li r8, 0
/* 8050EE94  39 20 00 00 */	li r9, 0
/* 8050EE98  4B B3 D3 81 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8050EE9C  48 00 00 0C */	b lbl_8050EEA8
lbl_8050EEA0:
/* 8050EEA0  3B 9C 00 01 */	addi r28, r28, 1
/* 8050EEA4  42 00 FE B0 */	bdnz lbl_8050ED54
lbl_8050EEA8:
/* 8050EEA8  39 61 00 50 */	addi r11, r1, 0x50
/* 8050EEAC  4B E5 33 75 */	bl _restgpr_27
/* 8050EEB0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8050EEB4  7C 08 03 A6 */	mtlr r0
/* 8050EEB8  38 21 00 50 */	addi r1, r1, 0x50
/* 8050EEBC  4E 80 00 20 */	blr 
