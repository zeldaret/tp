lbl_8052EAA0:
/* 8052EAA0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8052EAA4  7C 08 02 A6 */	mflr r0
/* 8052EAA8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8052EAAC  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8052EAB0  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8052EAB4  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8052EAB8  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 8052EABC  39 61 00 80 */	addi r11, r1, 0x80
/* 8052EAC0  4B E3 37 18 */	b _savegpr_28
/* 8052EAC4  7C 7C 1B 78 */	mr r28, r3
/* 8052EAC8  3C 60 80 53 */	lis r3, lit_3679@ha
/* 8052EACC  3B C3 61 68 */	addi r30, r3, lit_3679@l
/* 8052EAD0  3B A0 00 00 */	li r29, 0
/* 8052EAD4  80 1C 06 48 */	lwz r0, 0x648(r28)
/* 8052EAD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8052EADC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8052EAE0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8052EAE4  38 81 00 10 */	addi r4, r1, 0x10
/* 8052EAE8  4B AE AD 10 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8052EAEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8052EAF0  40 82 00 10 */	bne lbl_8052EB00
/* 8052EAF4  38 00 00 64 */	li r0, 0x64
/* 8052EAF8  B0 1C 05 B8 */	sth r0, 0x5b8(r28)
/* 8052EAFC  3B A0 00 01 */	li r29, 1
lbl_8052EB00:
/* 8052EB00  38 00 08 00 */	li r0, 0x800
/* 8052EB04  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
/* 8052EB08  C3 FE 00 18 */	lfs f31, 0x18(r30)
/* 8052EB0C  C3 DE 00 80 */	lfs f30, 0x80(r30)
/* 8052EB10  A8 1C 05 B8 */	lha r0, 0x5b8(r28)
/* 8052EB14  2C 00 00 02 */	cmpwi r0, 2
/* 8052EB18  41 82 00 44 */	beq lbl_8052EB5C
/* 8052EB1C  40 80 00 14 */	bge lbl_8052EB30
/* 8052EB20  2C 00 00 00 */	cmpwi r0, 0
/* 8052EB24  41 82 00 1C */	beq lbl_8052EB40
/* 8052EB28  40 80 00 2C */	bge lbl_8052EB54
/* 8052EB2C  48 00 05 4C */	b lbl_8052F078
lbl_8052EB30:
/* 8052EB30  2C 00 00 04 */	cmpwi r0, 4
/* 8052EB34  41 82 05 2C */	beq lbl_8052F060
/* 8052EB38  40 80 05 40 */	bge lbl_8052F078
/* 8052EB3C  48 00 02 78 */	b lbl_8052EDB4
lbl_8052EB40:
/* 8052EB40  38 00 00 00 */	li r0, 0
/* 8052EB44  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 8052EB48  A8 7C 05 B8 */	lha r3, 0x5b8(r28)
/* 8052EB4C  38 03 00 01 */	addi r0, r3, 1
/* 8052EB50  B0 1C 05 B8 */	sth r0, 0x5b8(r28)
lbl_8052EB54:
/* 8052EB54  38 00 00 02 */	li r0, 2
/* 8052EB58  B0 1C 05 B8 */	sth r0, 0x5b8(r28)
lbl_8052EB5C:
/* 8052EB5C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8052EB60  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8052EB64  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8052EB68  4B D3 7F CC */	b __mi__4cXyzCFRC3Vec
/* 8052EB6C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8052EB70  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8052EB74  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8052EB78  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 8052EB7C  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8052EB80  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8052EB84  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8052EB88  EC 03 00 28 */	fsubs f0, f3, f0
/* 8052EB8C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8052EB90  4B D3 8A E4 */	b cM_atan2s__Fff
/* 8052EB94  B0 7C 05 CC */	sth r3, 0x5cc(r28)
/* 8052EB98  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8052EB9C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052EBA0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8052EBA4  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052EBA8  EC 41 00 2A */	fadds f2, f1, f0
/* 8052EBAC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8052EBB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052EBB4  40 81 00 0C */	ble lbl_8052EBC0
/* 8052EBB8  FC 00 10 34 */	frsqrte f0, f2
/* 8052EBBC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052EBC0:
/* 8052EBC0  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8052EBC4  4B D3 8A B0 */	b cM_atan2s__Fff
/* 8052EBC8  7C 03 00 D0 */	neg r0, r3
/* 8052EBCC  B0 1C 05 CE */	sth r0, 0x5ce(r28)
/* 8052EBD0  A8 1C 05 CE */	lha r0, 0x5ce(r28)
/* 8052EBD4  2C 00 E0 00 */	cmpwi r0, -8192
/* 8052EBD8  40 80 00 0C */	bge lbl_8052EBE4
/* 8052EBDC  38 00 E0 00 */	li r0, -8192
/* 8052EBE0  B0 1C 05 CE */	sth r0, 0x5ce(r28)
lbl_8052EBE4:
/* 8052EBE4  38 61 00 48 */	addi r3, r1, 0x48
/* 8052EBE8  4B E1 85 50 */	b PSVECSquareMag
/* 8052EBEC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8052EBF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052EBF4  40 81 00 58 */	ble lbl_8052EC4C
/* 8052EBF8  FC 00 08 34 */	frsqrte f0, f1
/* 8052EBFC  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 8052EC00  FC 44 00 32 */	fmul f2, f4, f0
/* 8052EC04  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 8052EC08  FC 00 00 32 */	fmul f0, f0, f0
/* 8052EC0C  FC 01 00 32 */	fmul f0, f1, f0
/* 8052EC10  FC 03 00 28 */	fsub f0, f3, f0
/* 8052EC14  FC 02 00 32 */	fmul f0, f2, f0
/* 8052EC18  FC 44 00 32 */	fmul f2, f4, f0
/* 8052EC1C  FC 00 00 32 */	fmul f0, f0, f0
/* 8052EC20  FC 01 00 32 */	fmul f0, f1, f0
/* 8052EC24  FC 03 00 28 */	fsub f0, f3, f0
/* 8052EC28  FC 02 00 32 */	fmul f0, f2, f0
/* 8052EC2C  FC 44 00 32 */	fmul f2, f4, f0
/* 8052EC30  FC 00 00 32 */	fmul f0, f0, f0
/* 8052EC34  FC 01 00 32 */	fmul f0, f1, f0
/* 8052EC38  FC 03 00 28 */	fsub f0, f3, f0
/* 8052EC3C  FC 02 00 32 */	fmul f0, f2, f0
/* 8052EC40  FC 21 00 32 */	fmul f1, f1, f0
/* 8052EC44  FC 20 08 18 */	frsp f1, f1
/* 8052EC48  48 00 00 88 */	b lbl_8052ECD0
lbl_8052EC4C:
/* 8052EC4C  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 8052EC50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052EC54  40 80 00 10 */	bge lbl_8052EC64
/* 8052EC58  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052EC5C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8052EC60  48 00 00 70 */	b lbl_8052ECD0
lbl_8052EC64:
/* 8052EC64  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8052EC68  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8052EC6C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052EC70  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052EC74  7C 03 00 00 */	cmpw r3, r0
/* 8052EC78  41 82 00 14 */	beq lbl_8052EC8C
/* 8052EC7C  40 80 00 40 */	bge lbl_8052ECBC
/* 8052EC80  2C 03 00 00 */	cmpwi r3, 0
/* 8052EC84  41 82 00 20 */	beq lbl_8052ECA4
/* 8052EC88  48 00 00 34 */	b lbl_8052ECBC
lbl_8052EC8C:
/* 8052EC8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052EC90  41 82 00 0C */	beq lbl_8052EC9C
/* 8052EC94  38 00 00 01 */	li r0, 1
/* 8052EC98  48 00 00 28 */	b lbl_8052ECC0
lbl_8052EC9C:
/* 8052EC9C  38 00 00 02 */	li r0, 2
/* 8052ECA0  48 00 00 20 */	b lbl_8052ECC0
lbl_8052ECA4:
/* 8052ECA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052ECA8  41 82 00 0C */	beq lbl_8052ECB4
/* 8052ECAC  38 00 00 05 */	li r0, 5
/* 8052ECB0  48 00 00 10 */	b lbl_8052ECC0
lbl_8052ECB4:
/* 8052ECB4  38 00 00 03 */	li r0, 3
/* 8052ECB8  48 00 00 08 */	b lbl_8052ECC0
lbl_8052ECBC:
/* 8052ECBC  38 00 00 04 */	li r0, 4
lbl_8052ECC0:
/* 8052ECC0  2C 00 00 01 */	cmpwi r0, 1
/* 8052ECC4  40 82 00 0C */	bne lbl_8052ECD0
/* 8052ECC8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052ECCC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8052ECD0:
/* 8052ECD0  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 8052ECD4  C0 1C 05 EC */	lfs f0, 0x5ec(r28)
/* 8052ECD8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8052ECDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052ECE0  40 81 00 0C */	ble lbl_8052ECEC
/* 8052ECE4  3B A0 00 01 */	li r29, 1
/* 8052ECE8  48 00 00 AC */	b lbl_8052ED94
lbl_8052ECEC:
/* 8052ECEC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8052ECF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052ECF4  40 81 00 28 */	ble lbl_8052ED1C
/* 8052ECF8  C3 FE 01 28 */	lfs f31, 0x128(r30)
/* 8052ECFC  C3 DE 00 B4 */	lfs f30, 0xb4(r30)
/* 8052ED00  FC 20 00 90 */	fmr f1, f0
/* 8052ED04  4B D3 8C 50 */	b cM_rndF__Ff
/* 8052ED08  FC 00 08 1E */	fctiwz f0, f1
/* 8052ED0C  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8052ED10  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8052ED14  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 8052ED18  48 00 00 7C */	b lbl_8052ED94
lbl_8052ED1C:
/* 8052ED1C  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8052ED20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052ED24  40 80 00 0C */	bge lbl_8052ED30
/* 8052ED28  C3 FE 00 BC */	lfs f31, 0xbc(r30)
/* 8052ED2C  48 00 00 68 */	b lbl_8052ED94
lbl_8052ED30:
/* 8052ED30  A8 7C 06 24 */	lha r3, 0x624(r28)
/* 8052ED34  7C 60 07 35 */	extsh. r0, r3
/* 8052ED38  40 82 00 28 */	bne lbl_8052ED60
/* 8052ED3C  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8052ED40  4B D3 8C 14 */	b cM_rndF__Ff
/* 8052ED44  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8052ED48  EC 00 08 2A */	fadds f0, f0, f1
/* 8052ED4C  FC 00 00 1E */	fctiwz f0, f0
/* 8052ED50  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8052ED54  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8052ED58  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 8052ED5C  48 00 00 38 */	b lbl_8052ED94
lbl_8052ED60:
/* 8052ED60  2C 03 00 01 */	cmpwi r3, 1
/* 8052ED64  40 82 00 30 */	bne lbl_8052ED94
/* 8052ED68  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8052ED6C  4B D3 8B E8 */	b cM_rndF__Ff
/* 8052ED70  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8052ED74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052ED78  40 80 00 1C */	bge lbl_8052ED94
/* 8052ED7C  38 00 00 03 */	li r0, 3
/* 8052ED80  B0 1C 05 B8 */	sth r0, 0x5b8(r28)
/* 8052ED84  38 00 00 07 */	li r0, 7
/* 8052ED88  B0 1C 06 2A */	sth r0, 0x62a(r28)
/* 8052ED8C  38 00 00 3C */	li r0, 0x3c
/* 8052ED90  B0 1C 06 28 */	sth r0, 0x628(r28)
lbl_8052ED94:
/* 8052ED94  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 8052ED98  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8052ED9C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8052EDA0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8052EDA4  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 8052EDA8  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 8052EDAC  4B D4 0C 90 */	b cLib_addCalc2__FPffff
/* 8052EDB0  48 00 02 C8 */	b lbl_8052F078
lbl_8052EDB4:
/* 8052EDB4  A8 1C 06 28 */	lha r0, 0x628(r28)
/* 8052EDB8  2C 00 00 00 */	cmpwi r0, 0
/* 8052EDBC  40 82 00 0C */	bne lbl_8052EDC8
/* 8052EDC0  3B A0 00 01 */	li r29, 1
/* 8052EDC4  48 00 02 B4 */	b lbl_8052F078
lbl_8052EDC8:
/* 8052EDC8  38 61 00 30 */	addi r3, r1, 0x30
/* 8052EDCC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8052EDD0  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8052EDD4  4B D3 7D 60 */	b __mi__4cXyzCFRC3Vec
/* 8052EDD8  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8052EDDC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8052EDE0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8052EDE4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8052EDE8  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8052EDEC  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8052EDF0  4B D3 88 84 */	b cM_atan2s__Fff
/* 8052EDF4  B0 7C 05 CC */	sth r3, 0x5cc(r28)
/* 8052EDF8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8052EDFC  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052EE00  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8052EE04  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052EE08  EC 41 00 2A */	fadds f2, f1, f0
/* 8052EE0C  FC 00 F8 90 */	fmr f0, f31
/* 8052EE10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052EE14  40 81 00 0C */	ble lbl_8052EE20
/* 8052EE18  FC 00 10 34 */	frsqrte f0, f2
/* 8052EE1C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052EE20:
/* 8052EE20  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8052EE24  4B D3 88 50 */	b cM_atan2s__Fff
/* 8052EE28  7C 03 00 D0 */	neg r0, r3
/* 8052EE2C  B0 1C 05 CE */	sth r0, 0x5ce(r28)
/* 8052EE30  C3 FE 00 F8 */	lfs f31, 0xf8(r30)
/* 8052EE34  C3 DE 00 00 */	lfs f30, 0(r30)
/* 8052EE38  38 61 00 48 */	addi r3, r1, 0x48
/* 8052EE3C  4B E1 82 FC */	b PSVECSquareMag
/* 8052EE40  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8052EE44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052EE48  40 81 00 58 */	ble lbl_8052EEA0
/* 8052EE4C  FC 00 08 34 */	frsqrte f0, f1
/* 8052EE50  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 8052EE54  FC 44 00 32 */	fmul f2, f4, f0
/* 8052EE58  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 8052EE5C  FC 00 00 32 */	fmul f0, f0, f0
/* 8052EE60  FC 01 00 32 */	fmul f0, f1, f0
/* 8052EE64  FC 03 00 28 */	fsub f0, f3, f0
/* 8052EE68  FC 02 00 32 */	fmul f0, f2, f0
/* 8052EE6C  FC 44 00 32 */	fmul f2, f4, f0
/* 8052EE70  FC 00 00 32 */	fmul f0, f0, f0
/* 8052EE74  FC 01 00 32 */	fmul f0, f1, f0
/* 8052EE78  FC 03 00 28 */	fsub f0, f3, f0
/* 8052EE7C  FC 02 00 32 */	fmul f0, f2, f0
/* 8052EE80  FC 44 00 32 */	fmul f2, f4, f0
/* 8052EE84  FC 00 00 32 */	fmul f0, f0, f0
/* 8052EE88  FC 01 00 32 */	fmul f0, f1, f0
/* 8052EE8C  FC 03 00 28 */	fsub f0, f3, f0
/* 8052EE90  FC 02 00 32 */	fmul f0, f2, f0
/* 8052EE94  FC 21 00 32 */	fmul f1, f1, f0
/* 8052EE98  FC 20 08 18 */	frsp f1, f1
/* 8052EE9C  48 00 00 88 */	b lbl_8052EF24
lbl_8052EEA0:
/* 8052EEA0  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 8052EEA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052EEA8  40 80 00 10 */	bge lbl_8052EEB8
/* 8052EEAC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052EEB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8052EEB4  48 00 00 70 */	b lbl_8052EF24
lbl_8052EEB8:
/* 8052EEB8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8052EEBC  80 81 00 08 */	lwz r4, 8(r1)
/* 8052EEC0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052EEC4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052EEC8  7C 03 00 00 */	cmpw r3, r0
/* 8052EECC  41 82 00 14 */	beq lbl_8052EEE0
/* 8052EED0  40 80 00 40 */	bge lbl_8052EF10
/* 8052EED4  2C 03 00 00 */	cmpwi r3, 0
/* 8052EED8  41 82 00 20 */	beq lbl_8052EEF8
/* 8052EEDC  48 00 00 34 */	b lbl_8052EF10
lbl_8052EEE0:
/* 8052EEE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052EEE4  41 82 00 0C */	beq lbl_8052EEF0
/* 8052EEE8  38 00 00 01 */	li r0, 1
/* 8052EEEC  48 00 00 28 */	b lbl_8052EF14
lbl_8052EEF0:
/* 8052EEF0  38 00 00 02 */	li r0, 2
/* 8052EEF4  48 00 00 20 */	b lbl_8052EF14
lbl_8052EEF8:
/* 8052EEF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052EEFC  41 82 00 0C */	beq lbl_8052EF08
/* 8052EF00  38 00 00 05 */	li r0, 5
/* 8052EF04  48 00 00 10 */	b lbl_8052EF14
lbl_8052EF08:
/* 8052EF08  38 00 00 03 */	li r0, 3
/* 8052EF0C  48 00 00 08 */	b lbl_8052EF14
lbl_8052EF10:
/* 8052EF10  38 00 00 04 */	li r0, 4
lbl_8052EF14:
/* 8052EF14  2C 00 00 01 */	cmpwi r0, 1
/* 8052EF18  40 82 00 0C */	bne lbl_8052EF24
/* 8052EF1C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052EF20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8052EF24:
/* 8052EF24  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 8052EF28  C0 1C 05 BC */	lfs f0, 0x5bc(r28)
/* 8052EF2C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8052EF30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052EF34  40 80 01 44 */	bge lbl_8052F078
/* 8052EF38  38 00 00 32 */	li r0, 0x32
/* 8052EF3C  B0 1F 05 D2 */	sth r0, 0x5d2(r31)
/* 8052EF40  38 00 00 00 */	li r0, 0
/* 8052EF44  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 8052EF48  28 1C 00 00 */	cmplwi r28, 0
/* 8052EF4C  41 82 00 0C */	beq lbl_8052EF58
/* 8052EF50  80 1C 00 04 */	lwz r0, 4(r28)
/* 8052EF54  48 00 00 08 */	b lbl_8052EF5C
lbl_8052EF58:
/* 8052EF58  38 00 FF FF */	li r0, -1
lbl_8052EF5C:
/* 8052EF5C  90 1F 05 F8 */	stw r0, 0x5f8(r31)
/* 8052EF60  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8052EF64  4B D3 8A 28 */	b cM_rndFX__Ff
/* 8052EF68  FC 00 08 1E */	fctiwz f0, f1
/* 8052EF6C  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8052EF70  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8052EF74  B0 1C 05 CC */	sth r0, 0x5cc(r28)
/* 8052EF78  38 00 20 00 */	li r0, 0x2000
/* 8052EF7C  B0 1C 05 CE */	sth r0, 0x5ce(r28)
/* 8052EF80  38 00 10 00 */	li r0, 0x1000
/* 8052EF84  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
/* 8052EF88  38 00 00 04 */	li r0, 4
/* 8052EF8C  B0 1C 05 B8 */	sth r0, 0x5b8(r28)
/* 8052EF90  7F 83 E3 78 */	mr r3, r28
/* 8052EF94  4B FF B2 89 */	bl mouth_close__FP13mg_fish_class
/* 8052EF98  C0 1C 06 38 */	lfs f0, 0x638(r28)
/* 8052EF9C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8052EFA0  C0 1C 06 3C */	lfs f0, 0x63c(r28)
/* 8052EFA4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8052EFA8  C0 1C 06 40 */	lfs f0, 0x640(r28)
/* 8052EFAC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8052EFB0  7F 83 E3 78 */	mr r3, r28
/* 8052EFB4  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 8052EFB8  38 81 00 24 */	addi r4, r1, 0x24
/* 8052EFBC  4B FF AE CD */	bl sibuki_set__FP13mg_fish_classf4cXyz
/* 8052EFC0  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 8052EFC4  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 8052EFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052EFCC  38 7C 08 00 */	addi r3, r28, 0x800
/* 8052EFD0  38 81 00 14 */	addi r4, r1, 0x14
/* 8052EFD4  38 A0 00 00 */	li r5, 0
/* 8052EFD8  38 C0 FF FF */	li r6, -1
/* 8052EFDC  81 9C 08 00 */	lwz r12, 0x800(r28)
/* 8052EFE0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8052EFE4  7D 89 03 A6 */	mtctr r12
/* 8052EFE8  4E 80 04 21 */	bctrl 
/* 8052EFEC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8052EFF0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8052EFF4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8052EFF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8052EFFC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8052F000  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8052F004  38 61 00 18 */	addi r3, r1, 0x18
/* 8052F008  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 8052F00C  C0 1C 05 BC */	lfs f0, 0x5bc(r28)
/* 8052F010  EC 01 00 32 */	fmuls f0, f1, f0
/* 8052F014  FC 00 00 1E */	fctiwz f0, f0
/* 8052F018  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8052F01C  80 81 00 64 */	lwz r4, 0x64(r1)
/* 8052F020  28 1C 00 00 */	cmplwi r28, 0
/* 8052F024  41 82 00 0C */	beq lbl_8052F030
/* 8052F028  80 BC 00 04 */	lwz r5, 4(r28)
/* 8052F02C  48 00 00 08 */	b lbl_8052F034
lbl_8052F030:
/* 8052F030  38 A0 FF FF */	li r5, -1
lbl_8052F034:
/* 8052F034  38 C0 00 05 */	li r6, 5
/* 8052F038  4B C7 91 88 */	b dKy_Sound_set__F4cXyziUii
/* 8052F03C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8052F040  4B D3 89 14 */	b cM_rndF__Ff
/* 8052F044  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8052F048  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F04C  FC 00 00 1E */	fctiwz f0, f0
/* 8052F050  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8052F054  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8052F058  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 8052F05C  48 00 00 1C */	b lbl_8052F078
lbl_8052F060:
/* 8052F060  C3 FE 00 58 */	lfs f31, 0x58(r30)
/* 8052F064  C3 DE 00 20 */	lfs f30, 0x20(r30)
/* 8052F068  A8 1C 06 24 */	lha r0, 0x624(r28)
/* 8052F06C  2C 00 00 00 */	cmpwi r0, 0
/* 8052F070  40 82 00 08 */	bne lbl_8052F078
/* 8052F074  3B A0 00 01 */	li r29, 1
lbl_8052F078:
/* 8052F078  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8052F07C  FC 20 F8 90 */	fmr f1, f31
/* 8052F080  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8052F084  FC 60 F0 90 */	fmr f3, f30
/* 8052F088  4B D4 09 B4 */	b cLib_addCalc2__FPffff
/* 8052F08C  38 7C 04 DE */	addi r3, r28, 0x4de
/* 8052F090  A8 9C 05 CC */	lha r4, 0x5cc(r28)
/* 8052F094  38 A0 00 02 */	li r5, 2
/* 8052F098  A8 DC 05 D0 */	lha r6, 0x5d0(r28)
/* 8052F09C  4B D4 15 6C */	b cLib_addCalcAngleS2__FPssss
/* 8052F0A0  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 8052F0A4  A8 9C 05 CE */	lha r4, 0x5ce(r28)
/* 8052F0A8  38 A0 00 02 */	li r5, 2
/* 8052F0AC  A8 DC 05 D0 */	lha r6, 0x5d0(r28)
/* 8052F0B0  4B D4 15 58 */	b cLib_addCalcAngleS2__FPssss
/* 8052F0B4  2C 1D 00 00 */	cmpwi r29, 0
/* 8052F0B8  41 82 00 40 */	beq lbl_8052F0F8
/* 8052F0BC  38 00 00 01 */	li r0, 1
/* 8052F0C0  B0 1C 05 B6 */	sth r0, 0x5b6(r28)
/* 8052F0C4  38 00 00 00 */	li r0, 0
/* 8052F0C8  B0 1C 05 B8 */	sth r0, 0x5b8(r28)
/* 8052F0CC  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 8052F0D0  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8052F0D4  4B D3 88 80 */	b cM_rndF__Ff
/* 8052F0D8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8052F0DC  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F0E0  FC 00 00 1E */	fctiwz f0, f0
/* 8052F0E4  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8052F0E8  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8052F0EC  B0 1C 06 2E */	sth r0, 0x62e(r28)
/* 8052F0F0  7F 83 E3 78 */	mr r3, r28
/* 8052F0F4  4B FF B1 29 */	bl mouth_close__FP13mg_fish_class
lbl_8052F0F8:
/* 8052F0F8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8052F0FC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8052F100  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 8052F104  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8052F108  39 61 00 80 */	addi r11, r1, 0x80
/* 8052F10C  4B E3 31 18 */	b _restgpr_28
/* 8052F110  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8052F114  7C 08 03 A6 */	mtlr r0
/* 8052F118  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8052F11C  4E 80 00 20 */	blr 
