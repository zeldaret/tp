lbl_80D1AC84:
/* 80D1AC84  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D1AC88  7C 08 02 A6 */	mflr r0
/* 80D1AC8C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D1AC90  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80D1AC94  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80D1AC98  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80D1AC9C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80D1ACA0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D1ACA4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D1ACA8  7C 7E 1B 78 */	mr r30, r3
/* 80D1ACAC  3C 60 80 D2 */	lis r3, lit_3775@ha /* 0x80D1B6D8@ha */
/* 80D1ACB0  3B E3 B6 D8 */	addi r31, r3, lit_3775@l /* 0x80D1B6D8@l */
/* 80D1ACB4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D1ACB8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D1ACBC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D1ACC0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D1ACC4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D1ACC8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D1ACCC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D1ACD0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D1ACD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D1ACD8  38 61 00 08 */	addi r3, r1, 8
/* 80D1ACDC  38 81 00 14 */	addi r4, r1, 0x14
/* 80D1ACE0  4B 2F A6 31 */	bl mDoLib_project__FP3VecP3Vec
/* 80D1ACE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1ACE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1ACEC  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 80D1ACF0  28 03 00 00 */	cmplwi r3, 0
/* 80D1ACF4  41 82 00 0C */	beq lbl_80D1AD00
/* 80D1ACF8  C0 63 0B 68 */	lfs f3, 0xb68(r3)
/* 80D1ACFC  48 00 00 08 */	b lbl_80D1AD04
lbl_80D1AD00:
/* 80D1AD00  C0 7F 00 58 */	lfs f3, 0x58(r31)
lbl_80D1AD04:
/* 80D1AD04  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80D1AD08  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D1AD0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1AD10  40 81 00 5C */	ble lbl_80D1AD6C
/* 80D1AD14  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80D1AD18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1AD1C  40 80 00 50 */	bge lbl_80D1AD6C
/* 80D1AD20  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80D1AD24  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80D1AD28  40 81 00 44 */	ble lbl_80D1AD6C
/* 80D1AD2C  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80D1AD30  EC 00 18 28 */	fsubs f0, f0, f3
/* 80D1AD34  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D1AD38  40 80 00 34 */	bge lbl_80D1AD6C
/* 80D1AD3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1AD40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1AD44  3C 63 00 02 */	addis r3, r3, 2
/* 80D1AD48  FC 00 08 1E */	fctiwz f0, f1
/* 80D1AD4C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80D1AD50  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80D1AD54  FC 00 10 1E */	fctiwz f0, f2
/* 80D1AD58  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80D1AD5C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80D1AD60  38 DE 07 54 */	addi r6, r30, 0x754
/* 80D1AD64  38 63 C0 F4 */	addi r3, r3, -16140
/* 80D1AD68  4B 33 B2 B1 */	bl newData__13dDlst_peekZ_cFssPUl
lbl_80D1AD6C:
/* 80D1AD6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1AD70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1AD74  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 80D1AD78  C3 E3 00 C8 */	lfs f31, 0xc8(r3)
/* 80D1AD7C  C3 C3 00 CC */	lfs f30, 0xcc(r3)
/* 80D1AD80  38 61 00 08 */	addi r3, r1, 8
/* 80D1AD84  38 81 00 14 */	addi r4, r1, 0x14
/* 80D1AD88  4B 2F A7 65 */	bl mDoLib_pos2camera__FP3VecP3Vec
/* 80D1AD8C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80D1AD90  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80D1AD94  EC 21 00 2A */	fadds f1, f1, f0
/* 80D1AD98  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D1AD9C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D1ADA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1ADA4  40 81 00 08 */	ble lbl_80D1ADAC
/* 80D1ADA8  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80D1ADAC:
/* 80D1ADAC  C0 7F 00 FC */	lfs f3, 0xfc(r31)
/* 80D1ADB0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80D1ADB4  EC 3E 07 F2 */	fmuls f1, f30, f31
/* 80D1ADB8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D1ADBC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D1ADC0  EC 3F 00 2A */	fadds f1, f31, f0
/* 80D1ADC4  EC 1E F8 28 */	fsubs f0, f30, f31
/* 80D1ADC8  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D1ADCC  EC 02 00 2A */	fadds f0, f2, f0
/* 80D1ADD0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80D1ADD4  D0 1E 07 50 */	stfs f0, 0x750(r30)
/* 80D1ADD8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80D1ADDC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80D1ADE0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80D1ADE4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80D1ADE8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D1ADEC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D1ADF0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D1ADF4  7C 08 03 A6 */	mtlr r0
/* 80D1ADF8  38 21 00 60 */	addi r1, r1, 0x60
/* 80D1ADFC  4E 80 00 20 */	blr 
