lbl_80D2ED14:
/* 80D2ED14  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80D2ED18  7C 08 02 A6 */	mflr r0
/* 80D2ED1C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80D2ED20  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80D2ED24  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80D2ED28  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80D2ED2C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80D2ED30  39 61 00 60 */	addi r11, r1, 0x60
/* 80D2ED34  4B 63 34 91 */	bl _savegpr_23
/* 80D2ED38  7C 78 1B 78 */	mr r24, r3
/* 80D2ED3C  3C 60 80 D3 */	lis r3, lit_3807@ha /* 0x80D2FD58@ha */
/* 80D2ED40  3B 63 FD 58 */	addi r27, r3, lit_3807@l /* 0x80D2FD58@l */
/* 80D2ED44  80 18 00 B0 */	lwz r0, 0xb0(r24)
/* 80D2ED48  54 00 B7 3E */	rlwinm r0, r0, 0x16, 0x1c, 0x1f
/* 80D2ED4C  2C 00 00 01 */	cmpwi r0, 1
/* 80D2ED50  41 82 02 80 */	beq lbl_80D2EFD0
/* 80D2ED54  38 A0 00 00 */	li r5, 0
/* 80D2ED58  3C 60 80 D3 */	lis r3, target_info_count@ha /* 0x80D2FE78@ha */
/* 80D2ED5C  90 A3 FE 78 */	stw r5, target_info_count@l(r3)  /* 0x80D2FE78@l */
/* 80D2ED60  7C A3 2B 78 */	mr r3, r5
/* 80D2ED64  3C 80 80 D3 */	lis r4, target_info@ha /* 0x80D2FE50@ha */
/* 80D2ED68  38 84 FE 50 */	addi r4, r4, target_info@l /* 0x80D2FE50@l */
/* 80D2ED6C  38 00 00 0A */	li r0, 0xa
/* 80D2ED70  7C 09 03 A6 */	mtctr r0
lbl_80D2ED74:
/* 80D2ED74  7C A4 19 2E */	stwx r5, r4, r3
/* 80D2ED78  38 63 00 04 */	addi r3, r3, 4
/* 80D2ED7C  42 00 FF F8 */	bdnz lbl_80D2ED74
/* 80D2ED80  3C 60 80 D3 */	lis r3, s_b_sub__FPvPv@ha /* 0x80D2EC18@ha */
/* 80D2ED84  38 63 EC 18 */	addi r3, r3, s_b_sub__FPvPv@l /* 0x80D2EC18@l */
/* 80D2ED88  7F 04 C3 78 */	mr r4, r24
/* 80D2ED8C  4B 2F 25 AD */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80D2ED90  3C 60 80 D3 */	lis r3, target_info_count@ha /* 0x80D2FE78@ha */
/* 80D2ED94  3B 83 FE 78 */	addi r28, r3, target_info_count@l /* 0x80D2FE78@l */
/* 80D2ED98  80 1C 00 00 */	lwz r0, 0(r28)
/* 80D2ED9C  2C 00 00 00 */	cmpwi r0, 0
/* 80D2EDA0  41 82 02 30 */	beq lbl_80D2EFD0
/* 80D2EDA4  3B 40 00 00 */	li r26, 0
/* 80D2EDA8  3A E0 00 00 */	li r23, 0
/* 80D2EDAC  3C 60 80 D3 */	lis r3, target_info@ha /* 0x80D2FE50@ha */
/* 80D2EDB0  3B A3 FE 50 */	addi r29, r3, target_info@l /* 0x80D2FE50@l */
/* 80D2EDB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2EDB8  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2EDBC  7F DF F3 78 */	mr r31, r30
/* 80D2EDC0  C3 FB 00 00 */	lfs f31, 0(r27)
/* 80D2EDC4  C3 DB 00 04 */	lfs f30, 4(r27)
/* 80D2EDC8  48 00 01 FC */	b lbl_80D2EFC4
lbl_80D2EDCC:
/* 80D2EDCC  7F 3D B8 2E */	lwzx r25, r29, r23
/* 80D2EDD0  38 61 00 14 */	addi r3, r1, 0x14
/* 80D2EDD4  38 99 04 BC */	addi r4, r25, 0x4bc
/* 80D2EDD8  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 80D2EDDC  4B 53 7D 59 */	bl __mi__4cXyzCFRC3Vec
/* 80D2EDE0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D2EDE4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D2EDE8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D2EDEC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D2EDF0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D2EDF4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D2EDF8  38 61 00 08 */	addi r3, r1, 8
/* 80D2EDFC  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80D2EE00  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 80D2EE04  4B 53 7D 31 */	bl __mi__4cXyzCFRC3Vec
/* 80D2EE08  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D2EE0C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D2EE10  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D2EE14  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D2EE18  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D2EE1C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D2EE20  7F C3 F3 78 */	mr r3, r30
/* 80D2EE24  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 80D2EE28  7C 00 00 D0 */	neg r0, r0
/* 80D2EE2C  7C 04 07 34 */	extsh r4, r0
/* 80D2EE30  4B 2D D5 AD */	bl mDoMtx_YrotS__FPA4_fs
/* 80D2EE34  7F C3 F3 78 */	mr r3, r30
/* 80D2EE38  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D2EE3C  7C 85 23 78 */	mr r5, r4
/* 80D2EE40  4B 61 7F 2D */	bl PSMTXMultVec
/* 80D2EE44  7F E3 FB 78 */	mr r3, r31
/* 80D2EE48  38 81 00 20 */	addi r4, r1, 0x20
/* 80D2EE4C  7C 85 23 78 */	mr r5, r4
/* 80D2EE50  4B 61 7F 1D */	bl PSMTXMultVec
/* 80D2EE54  38 60 00 00 */	li r3, 0
/* 80D2EE58  7C 60 1B 78 */	mr r0, r3
/* 80D2EE5C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80D2EE60  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D2EE64  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D2EE68  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80D2EE6C  40 80 00 64 */	bge lbl_80D2EED0
/* 80D2EE70  C0 A1 00 2C */	lfs f5, 0x2c(r1)
/* 80D2EE74  C0 7B 00 04 */	lfs f3, 4(r27)
/* 80D2EE78  C0 98 04 EC */	lfs f4, 0x4ec(r24)
/* 80D2EE7C  FC 20 20 50 */	fneg f1, f4
/* 80D2EE80  EC 43 00 72 */	fmuls f2, f3, f1
/* 80D2EE84  FC 05 10 40 */	fcmpo cr0, f5, f2
/* 80D2EE88  40 81 00 48 */	ble lbl_80D2EED0
/* 80D2EE8C  EC 23 01 32 */	fmuls f1, f3, f4
/* 80D2EE90  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 80D2EE94  40 80 00 3C */	bge lbl_80D2EED0
/* 80D2EE98  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 80D2EE9C  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80D2EEA0  40 81 00 30 */	ble lbl_80D2EED0
/* 80D2EEA4  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2EEA8  40 80 00 28 */	bge lbl_80D2EED0
/* 80D2EEAC  C0 61 00 30 */	lfs f3, 0x30(r1)
/* 80D2EEB0  FC 03 F8 40 */	fcmpo cr0, f3, f31
/* 80D2EEB4  40 81 00 1C */	ble lbl_80D2EED0
/* 80D2EEB8  C0 5B 00 08 */	lfs f2, 8(r27)
/* 80D2EEBC  C0 38 04 F0 */	lfs f1, 0x4f0(r24)
/* 80D2EEC0  EC 22 00 72 */	fmuls f1, f2, f1
/* 80D2EEC4  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2EEC8  40 80 00 08 */	bge lbl_80D2EED0
/* 80D2EECC  38 00 00 01 */	li r0, 1
lbl_80D2EED0:
/* 80D2EED0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D2EED4  41 82 00 3C */	beq lbl_80D2EF10
/* 80D2EED8  38 00 00 00 */	li r0, 0
/* 80D2EEDC  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80D2EEE0  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80D2EEE4  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2EEE8  40 81 00 1C */	ble lbl_80D2EF04
/* 80D2EEEC  C0 5B 00 08 */	lfs f2, 8(r27)
/* 80D2EEF0  C0 38 04 F0 */	lfs f1, 0x4f0(r24)
/* 80D2EEF4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80D2EEF8  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2EEFC  40 80 00 08 */	bge lbl_80D2EF04
/* 80D2EF00  38 00 00 01 */	li r0, 1
lbl_80D2EF04:
/* 80D2EF04  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D2EF08  41 82 00 08 */	beq lbl_80D2EF10
/* 80D2EF0C  38 60 00 01 */	li r3, 1
lbl_80D2EF10:
/* 80D2EF10  38 80 00 00 */	li r4, 0
/* 80D2EF14  7C 80 23 78 */	mr r0, r4
/* 80D2EF18  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 80D2EF1C  C0 58 04 EC */	lfs f2, 0x4ec(r24)
/* 80D2EF20  FC 20 10 50 */	fneg f1, f2
/* 80D2EF24  EC 3E 00 72 */	fmuls f1, f30, f1
/* 80D2EF28  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2EF2C  40 81 00 38 */	ble lbl_80D2EF64
/* 80D2EF30  EC 3E 00 B2 */	fmuls f1, f30, f2
/* 80D2EF34  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2EF38  40 80 00 2C */	bge lbl_80D2EF64
/* 80D2EF3C  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80D2EF40  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80D2EF44  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2EF48  40 81 00 1C */	ble lbl_80D2EF64
/* 80D2EF4C  C0 5B 00 08 */	lfs f2, 8(r27)
/* 80D2EF50  C0 38 04 F0 */	lfs f1, 0x4f0(r24)
/* 80D2EF54  EC 22 00 72 */	fmuls f1, f2, f1
/* 80D2EF58  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2EF5C  40 80 00 08 */	bge lbl_80D2EF64
/* 80D2EF60  38 00 00 01 */	li r0, 1
lbl_80D2EF64:
/* 80D2EF64  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D2EF68  41 82 00 3C */	beq lbl_80D2EFA4
/* 80D2EF6C  38 00 00 00 */	li r0, 0
/* 80D2EF70  C0 5B 00 04 */	lfs f2, 4(r27)
/* 80D2EF74  C0 78 04 F4 */	lfs f3, 0x4f4(r24)
/* 80D2EF78  FC 20 18 50 */	fneg f1, f3
/* 80D2EF7C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80D2EF80  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D2EF84  40 81 00 14 */	ble lbl_80D2EF98
/* 80D2EF88  EC 22 00 F2 */	fmuls f1, f2, f3
/* 80D2EF8C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D2EF90  40 80 00 08 */	bge lbl_80D2EF98
/* 80D2EF94  38 00 00 01 */	li r0, 1
lbl_80D2EF98:
/* 80D2EF98  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D2EF9C  41 82 00 08 */	beq lbl_80D2EFA4
/* 80D2EFA0  38 80 00 01 */	li r4, 1
lbl_80D2EFA4:
/* 80D2EFA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D2EFA8  40 82 00 0C */	bne lbl_80D2EFB4
/* 80D2EFAC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D2EFB0  41 82 00 0C */	beq lbl_80D2EFBC
lbl_80D2EFB4:
/* 80D2EFB4  7F 23 CB 78 */	mr r3, r25
/* 80D2EFB8  4B 2E AC C5 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80D2EFBC:
/* 80D2EFBC  3B 5A 00 01 */	addi r26, r26, 1
/* 80D2EFC0  3A F7 00 04 */	addi r23, r23, 4
lbl_80D2EFC4:
/* 80D2EFC4  80 1C 00 00 */	lwz r0, 0(r28)
/* 80D2EFC8  7C 1A 00 00 */	cmpw r26, r0
/* 80D2EFCC  41 80 FE 00 */	blt lbl_80D2EDCC
lbl_80D2EFD0:
/* 80D2EFD0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80D2EFD4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80D2EFD8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80D2EFDC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80D2EFE0  39 61 00 60 */	addi r11, r1, 0x60
/* 80D2EFE4  4B 63 32 2D */	bl _restgpr_23
/* 80D2EFE8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D2EFEC  7C 08 03 A6 */	mtlr r0
/* 80D2EFF0  38 21 00 80 */	addi r1, r1, 0x80
/* 80D2EFF4  4E 80 00 20 */	blr 
