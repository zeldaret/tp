lbl_80A8AB70:
/* 80A8AB70  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A8AB74  7C 08 02 A6 */	mflr r0
/* 80A8AB78  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A8AB7C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A8AB80  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A8AB84  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80A8AB88  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80A8AB8C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80A8AB90  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 80A8AB94  39 61 00 30 */	addi r11, r1, 0x30
/* 80A8AB98  4B 8D 76 3D */	bl _savegpr_27
/* 80A8AB9C  7C 7E 1B 78 */	mr r30, r3
/* 80A8ABA0  3C 60 80 A9 */	lis r3, lit_3990@ha /* 0x80A9241C@ha */
/* 80A8ABA4  3B E3 24 1C */	addi r31, r3, lit_3990@l /* 0x80A9241C@l */
/* 80A8ABA8  88 1E 07 00 */	lbz r0, 0x700(r30)
/* 80A8ABAC  7C 00 07 75 */	extsb. r0, r0
/* 80A8ABB0  41 82 00 28 */	beq lbl_80A8ABD8
/* 80A8ABB4  38 00 00 01 */	li r0, 1
/* 80A8ABB8  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8ABBC  38 00 00 00 */	li r0, 0
/* 80A8ABC0  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8ABC4  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 80A8ABC8  B0 1E 06 50 */	sth r0, 0x650(r30)
/* 80A8ABCC  B0 1E 06 4E */	sth r0, 0x64e(r30)
/* 80A8ABD0  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 80A8ABD4  48 00 09 2C */	b lbl_80A8B500
lbl_80A8ABD8:
/* 80A8ABD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A8ABDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8ABE0  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80A8ABE4  3B 80 00 00 */	li r28, 0
/* 80A8ABE8  38 00 00 01 */	li r0, 1
/* 80A8ABEC  98 1E 06 68 */	stb r0, 0x668(r30)
/* 80A8ABF0  88 1E 07 01 */	lbz r0, 0x701(r30)
/* 80A8ABF4  7C 00 07 75 */	extsb. r0, r0
/* 80A8ABF8  41 82 00 14 */	beq lbl_80A8AC0C
/* 80A8ABFC  C3 FF 00 2C */	lfs f31, 0x2c(r31)
/* 80A8AC00  C3 BF 00 78 */	lfs f29, 0x78(r31)
/* 80A8AC04  C3 DF 00 24 */	lfs f30, 0x24(r31)
/* 80A8AC08  48 00 00 10 */	b lbl_80A8AC18
lbl_80A8AC0C:
/* 80A8AC0C  C3 FF 00 30 */	lfs f31, 0x30(r31)
/* 80A8AC10  C3 BF 00 68 */	lfs f29, 0x68(r31)
/* 80A8AC14  C3 DF 00 10 */	lfs f30, 0x10(r31)
lbl_80A8AC18:
/* 80A8AC18  3B 60 00 00 */	li r27, 0
/* 80A8AC1C  A8 1E 06 46 */	lha r0, 0x646(r30)
/* 80A8AC20  28 00 00 0B */	cmplwi r0, 0xb
/* 80A8AC24  41 81 06 AC */	bgt lbl_80A8B2D0
/* 80A8AC28  3C 60 80 A9 */	lis r3, lit_5010@ha /* 0x80A92850@ha */
/* 80A8AC2C  38 63 28 50 */	addi r3, r3, lit_5010@l /* 0x80A92850@l */
/* 80A8AC30  54 00 10 3A */	slwi r0, r0, 2
/* 80A8AC34  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A8AC38  7C 09 03 A6 */	mtctr r0
/* 80A8AC3C  4E 80 04 20 */	bctr 
lbl_80A8AC40:
/* 80A8AC40  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8AC44  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8AC48  7F C3 F3 78 */	mr r3, r30
/* 80A8AC4C  38 80 00 19 */	li r4, 0x19
/* 80A8AC50  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8AC54  38 A0 00 02 */	li r5, 2
/* 80A8AC58  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8AC5C  4B FF E0 B9 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8AC60  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8AC64  38 03 00 01 */	addi r0, r3, 1
/* 80A8AC68  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8AC6C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80A8AC70  4B 7D CD 1D */	bl cM_rndFX__Ff
/* 80A8AC74  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8AC78  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8AC7C  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
lbl_80A8AC80:
/* 80A8AC80  A8 1E 05 DC */	lha r0, 0x5dc(r30)
/* 80A8AC84  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 80A8AC88  3B 80 04 00 */	li r28, 0x400
/* 80A8AC8C  38 00 C5 68 */	li r0, -15000
/* 80A8AC90  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 80A8AC94  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80A8AC98  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 80A8AC9C  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 80A8ACA0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80A8ACA4  40 80 00 6C */	bge lbl_80A8AD10
/* 80A8ACA8  38 7E 06 38 */	addi r3, r30, 0x638
/* 80A8ACAC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8ACB0  FC 40 08 90 */	fmr f2, f1
/* 80A8ACB4  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80A8ACB8  4B 7E 4D 85 */	bl cLib_addCalc2__FPffff
/* 80A8ACBC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A8ACC0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8ACC4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80A8ACC8  4B 7E 4D B9 */	bl cLib_addCalc0__FPfff
/* 80A8ACCC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80A8ACD0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80A8ACD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8ACD8  40 80 05 F8 */	bge lbl_80A8B2D0
/* 80A8ACDC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80A8ACE0  4B 7D CC 75 */	bl cM_rndF__Ff
/* 80A8ACE4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A8ACE8  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8ACEC  FC 00 00 1E */	fctiwz f0, f0
/* 80A8ACF0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A8ACF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8ACF8  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 80A8ACFC  38 00 00 02 */	li r0, 2
/* 80A8AD00  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8AD04  38 00 00 1E */	li r0, 0x1e
/* 80A8AD08  B0 1E 06 4E */	sth r0, 0x64e(r30)
/* 80A8AD0C  48 00 05 C4 */	b lbl_80A8B2D0
lbl_80A8AD10:
/* 80A8AD10  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 80A8AD14  40 81 00 10 */	ble lbl_80A8AD24
/* 80A8AD18  38 00 00 05 */	li r0, 5
/* 80A8AD1C  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8AD20  48 00 05 B0 */	b lbl_80A8B2D0
lbl_80A8AD24:
/* 80A8AD24  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80A8AD28  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80A8AD2C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A8AD30  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A8AD34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8AD38  40 81 00 08 */	ble lbl_80A8AD40
/* 80A8AD3C  FC 20 00 90 */	fmr f1, f0
lbl_80A8AD40:
/* 80A8AD40  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80A8AD44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8AD48  40 80 00 08 */	bge lbl_80A8AD50
/* 80A8AD4C  FC 20 00 90 */	fmr f1, f0
lbl_80A8AD50:
/* 80A8AD50  38 7E 06 38 */	addi r3, r30, 0x638
/* 80A8AD54  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8AD58  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80A8AD5C  4B 7E 4C E1 */	bl cLib_addCalc2__FPffff
/* 80A8AD60  3C 60 80 A9 */	lis r3, l_HIO@ha /* 0x80A92AD4@ha */
/* 80A8AD64  38 63 2A D4 */	addi r3, r3, l_HIO@l /* 0x80A92AD4@l */
/* 80A8AD68  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80A8AD6C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A8AD70  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80A8AD74  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80A8AD78  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8AD7C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80A8AD80  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80A8AD84  4B 7E 4C B9 */	bl cLib_addCalc2__FPffff
/* 80A8AD88  48 00 05 48 */	b lbl_80A8B2D0
lbl_80A8AD8C:
/* 80A8AD8C  A8 1E 05 DC */	lha r0, 0x5dc(r30)
/* 80A8AD90  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 80A8AD94  A8 7E 05 D0 */	lha r3, 0x5d0(r30)
/* 80A8AD98  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8AD9C  7C 03 00 50 */	subf r0, r3, r0
/* 80A8ADA0  7C 1B 07 34 */	extsh r27, r0
/* 80A8ADA4  A8 1E 06 4E */	lha r0, 0x64e(r30)
/* 80A8ADA8  2C 00 00 00 */	cmpwi r0, 0
/* 80A8ADAC  41 82 00 78 */	beq lbl_80A8AE24
/* 80A8ADB0  2C 1B 40 00 */	cmpwi r27, 0x4000
/* 80A8ADB4  41 81 00 0C */	bgt lbl_80A8ADC0
/* 80A8ADB8  2C 1B C0 00 */	cmpwi r27, -16384
/* 80A8ADBC  40 80 00 30 */	bge lbl_80A8ADEC
lbl_80A8ADC0:
/* 80A8ADC0  3B 80 08 00 */	li r28, 0x800
/* 80A8ADC4  80 1E 06 30 */	lwz r0, 0x630(r30)
/* 80A8ADC8  2C 00 00 19 */	cmpwi r0, 0x19
/* 80A8ADCC  41 82 00 58 */	beq lbl_80A8AE24
/* 80A8ADD0  7F C3 F3 78 */	mr r3, r30
/* 80A8ADD4  38 80 00 19 */	li r4, 0x19
/* 80A8ADD8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8ADDC  38 A0 00 02 */	li r5, 2
/* 80A8ADE0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80A8ADE4  4B FF DF 31 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8ADE8  48 00 00 3C */	b lbl_80A8AE24
lbl_80A8ADEC:
/* 80A8ADEC  80 1E 06 30 */	lwz r0, 0x630(r30)
/* 80A8ADF0  2C 00 00 18 */	cmpwi r0, 0x18
/* 80A8ADF4  41 82 00 30 */	beq lbl_80A8AE24
/* 80A8ADF8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80A8ADFC  4B 7D CB 59 */	bl cM_rndF__Ff
/* 80A8AE00  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8AE04  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8AE08  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8AE0C  7F C3 F3 78 */	mr r3, r30
/* 80A8AE10  38 80 00 18 */	li r4, 0x18
/* 80A8AE14  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8AE18  38 A0 00 02 */	li r5, 2
/* 80A8AE1C  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8AE20  4B FF DE F5 */	bl anm_init__FP12npc_ne_classifUcf
lbl_80A8AE24:
/* 80A8AE24  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 80A8AE28  2C 00 00 00 */	cmpwi r0, 0
/* 80A8AE2C  41 82 00 14 */	beq lbl_80A8AE40
/* 80A8AE30  38 00 C5 68 */	li r0, -15000
/* 80A8AE34  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 80A8AE38  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80A8AE3C  D0 1E 06 90 */	stfs f0, 0x690(r30)
lbl_80A8AE40:
/* 80A8AE40  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8AE44  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80A8AE48  41 80 00 1C */	blt lbl_80A8AE64
/* 80A8AE4C  A8 1E 06 52 */	lha r0, 0x652(r30)
/* 80A8AE50  2C 00 00 00 */	cmpwi r0, 0
/* 80A8AE54  40 82 00 24 */	bne lbl_80A8AE78
/* 80A8AE58  80 1E 07 70 */	lwz r0, 0x770(r30)
/* 80A8AE5C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80A8AE60  41 82 00 18 */	beq lbl_80A8AE78
lbl_80A8AE64:
/* 80A8AE64  38 00 00 07 */	li r0, 7
/* 80A8AE68  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8AE6C  38 00 00 1E */	li r0, 0x1e
/* 80A8AE70  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 80A8AE74  48 00 00 AC */	b lbl_80A8AF20
lbl_80A8AE78:
/* 80A8AE78  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A8AE7C  EC 00 F0 2A */	fadds f0, f0, f30
/* 80A8AE80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8AE84  40 80 00 84 */	bge lbl_80A8AF08
/* 80A8AE88  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 80A8AE8C  2C 00 00 00 */	cmpwi r0, 0
/* 80A8AE90  40 82 00 90 */	bne lbl_80A8AF20
/* 80A8AE94  A8 1E 06 4E */	lha r0, 0x64e(r30)
/* 80A8AE98  2C 00 00 00 */	cmpwi r0, 0
/* 80A8AE9C  40 82 00 84 */	bne lbl_80A8AF20
/* 80A8AEA0  2C 1B 40 00 */	cmpwi r27, 0x4000
/* 80A8AEA4  40 80 00 7C */	bge lbl_80A8AF20
/* 80A8AEA8  2C 1B C0 00 */	cmpwi r27, -16384
/* 80A8AEAC  40 81 00 74 */	ble lbl_80A8AF20
/* 80A8AEB0  7F C3 F3 78 */	mr r3, r30
/* 80A8AEB4  38 80 80 00 */	li r4, -32768
/* 80A8AEB8  4B FF E4 1D */	bl way_bg_check__FP12npc_ne_classs
/* 80A8AEBC  2C 03 00 00 */	cmpwi r3, 0
/* 80A8AEC0  40 82 00 60 */	bne lbl_80A8AF20
/* 80A8AEC4  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80A8AEC8  4B 7D CA 8D */	bl cM_rndF__Ff
/* 80A8AECC  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80A8AED0  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8AED4  FC 00 00 1E */	fctiwz f0, f0
/* 80A8AED8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A8AEDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8AEE0  B0 1E 06 50 */	sth r0, 0x650(r30)
/* 80A8AEE4  7F C3 F3 78 */	mr r3, r30
/* 80A8AEE8  38 80 00 19 */	li r4, 0x19
/* 80A8AEEC  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8AEF0  38 A0 00 02 */	li r5, 2
/* 80A8AEF4  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80A8AEF8  4B FF DE 1D */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8AEFC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A8AF00  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8AF04  48 00 00 1C */	b lbl_80A8AF20
lbl_80A8AF08:
/* 80A8AF08  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A8AF0C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80A8AF10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8AF14  40 81 00 0C */	ble lbl_80A8AF20
/* 80A8AF18  38 00 00 00 */	li r0, 0
/* 80A8AF1C  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8AF20:
/* 80A8AF20  A8 7E 06 50 */	lha r3, 0x650(r30)
/* 80A8AF24  7C 60 07 35 */	extsh. r0, r3
/* 80A8AF28  41 82 00 54 */	beq lbl_80A8AF7C
/* 80A8AF2C  2C 03 00 01 */	cmpwi r3, 1
/* 80A8AF30  40 82 00 30 */	bne lbl_80A8AF60
/* 80A8AF34  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80A8AF38  4B 7D CA 1D */	bl cM_rndF__Ff
/* 80A8AF3C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8AF40  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8AF44  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8AF48  7F C3 F3 78 */	mr r3, r30
/* 80A8AF4C  38 80 00 18 */	li r4, 0x18
/* 80A8AF50  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8AF54  38 A0 00 02 */	li r5, 2
/* 80A8AF58  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8AF5C  4B FF DD B9 */	bl anm_init__FP12npc_ne_classifUcf
lbl_80A8AF60:
/* 80A8AF60  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A8AF64  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80A8AF68  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8AF6C  FC 60 10 90 */	fmr f3, f2
/* 80A8AF70  4B 7E 4A CD */	bl cLib_addCalc2__FPffff
/* 80A8AF74  3B 80 04 00 */	li r28, 0x400
/* 80A8AF78  48 00 00 14 */	b lbl_80A8AF8C
lbl_80A8AF7C:
/* 80A8AF7C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A8AF80  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8AF84  FC 40 08 90 */	fmr f2, f1
/* 80A8AF88  4B 7E 4A F9 */	bl cLib_addCalc0__FPfff
lbl_80A8AF8C:
/* 80A8AF8C  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 80A8AF90  2C 00 00 01 */	cmpwi r0, 1
/* 80A8AF94  40 82 03 3C */	bne lbl_80A8B2D0
/* 80A8AF98  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8AF9C  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8AFA0  7F C3 F3 78 */	mr r3, r30
/* 80A8AFA4  38 80 00 12 */	li r4, 0x12
/* 80A8AFA8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A8AFAC  38 A0 00 00 */	li r5, 0
/* 80A8AFB0  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8AFB4  4B FF DD 61 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8AFB8  48 00 03 18 */	b lbl_80A8B2D0
lbl_80A8AFBC:
/* 80A8AFBC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8AFC0  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8AFC4  7F C3 F3 78 */	mr r3, r30
/* 80A8AFC8  38 80 00 11 */	li r4, 0x11
/* 80A8AFCC  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8AFD0  38 A0 00 02 */	li r5, 2
/* 80A8AFD4  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8AFD8  4B FF DD 3D */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8AFDC  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8AFE0  38 03 00 01 */	addi r0, r3, 1
/* 80A8AFE4  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8AFE8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050002@ha */
/* 80A8AFEC  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x00050002@l */
/* 80A8AFF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A8AFF4  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80A8AFF8  38 81 00 0C */	addi r4, r1, 0xc
/* 80A8AFFC  38 A0 00 00 */	li r5, 0
/* 80A8B000  38 C0 FF FF */	li r6, -1
/* 80A8B004  81 9E 06 1C */	lwz r12, 0x61c(r30)
/* 80A8B008  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A8B00C  7D 89 03 A6 */	mtctr r12
/* 80A8B010  4E 80 04 21 */	bctrl 
lbl_80A8B014:
/* 80A8B014  A8 1E 05 DC */	lha r0, 0x5dc(r30)
/* 80A8B018  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 80A8B01C  3B 80 0A 00 */	li r28, 0xa00
/* 80A8B020  38 7E 06 38 */	addi r3, r30, 0x638
/* 80A8B024  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A8B028  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8B02C  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80A8B030  4B 7E 4A 0D */	bl cLib_addCalc2__FPffff
/* 80A8B034  3C 60 80 A9 */	lis r3, l_HIO@ha /* 0x80A92AD4@ha */
/* 80A8B038  38 63 2A D4 */	addi r3, r3, l_HIO@l /* 0x80A92AD4@l */
/* 80A8B03C  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 80A8B040  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A8B044  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80A8B048  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80A8B04C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8B050  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8B054  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80A8B058  4B 7E 49 E5 */	bl cLib_addCalc2__FPffff
/* 80A8B05C  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8B060  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80A8B064  EC 00 F8 2A */	fadds f0, f0, f31
/* 80A8B068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B06C  40 80 02 64 */	bge lbl_80A8B2D0
/* 80A8B070  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A8B074  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8B078  7F C3 F3 78 */	mr r3, r30
/* 80A8B07C  38 80 00 19 */	li r4, 0x19
/* 80A8B080  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8B084  38 A0 00 02 */	li r5, 2
/* 80A8B088  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8B08C  4B FF DC 89 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8B090  38 00 00 01 */	li r0, 1
/* 80A8B094  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8B098  48 00 02 38 */	b lbl_80A8B2D0
lbl_80A8B09C:
/* 80A8B09C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8B0A0  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8B0A4  7F C3 F3 78 */	mr r3, r30
/* 80A8B0A8  38 80 00 11 */	li r4, 0x11
/* 80A8B0AC  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8B0B0  38 A0 00 02 */	li r5, 2
/* 80A8B0B4  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8B0B8  4B FF DC 5D */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8B0BC  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8B0C0  38 03 00 01 */	addi r0, r3, 1
/* 80A8B0C4  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8B0C8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050002@ha */
/* 80A8B0CC  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x00050002@l */
/* 80A8B0D0  90 01 00 08 */	stw r0, 8(r1)
/* 80A8B0D4  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80A8B0D8  38 81 00 08 */	addi r4, r1, 8
/* 80A8B0DC  38 A0 00 00 */	li r5, 0
/* 80A8B0E0  38 C0 FF FF */	li r6, -1
/* 80A8B0E4  81 9E 06 1C */	lwz r12, 0x61c(r30)
/* 80A8B0E8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A8B0EC  7D 89 03 A6 */	mtctr r12
/* 80A8B0F0  4E 80 04 21 */	bctrl 
/* 80A8B0F4  A8 7E 05 DC */	lha r3, 0x5dc(r30)
/* 80A8B0F8  3C 63 00 01 */	addis r3, r3, 1
/* 80A8B0FC  38 03 80 00 */	addi r0, r3, -32768
/* 80A8B100  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
lbl_80A8B104:
/* 80A8B104  3B 80 0A 00 */	li r28, 0xa00
/* 80A8B108  38 7E 06 38 */	addi r3, r30, 0x638
/* 80A8B10C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A8B110  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8B114  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80A8B118  4B 7E 49 25 */	bl cLib_addCalc2__FPffff
/* 80A8B11C  3C 60 80 A9 */	lis r3, l_HIO@ha /* 0x80A92AD4@ha */
/* 80A8B120  38 63 2A D4 */	addi r3, r3, l_HIO@l /* 0x80A92AD4@l */
/* 80A8B124  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 80A8B128  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A8B12C  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80A8B130  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80A8B134  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8B138  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8B13C  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80A8B140  4B 7E 48 FD */	bl cLib_addCalc2__FPffff
/* 80A8B144  A8 1E 06 40 */	lha r0, 0x640(r30)
/* 80A8B148  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8B14C  41 82 00 14 */	beq lbl_80A8B160
/* 80A8B150  7F C3 F3 78 */	mr r3, r30
/* 80A8B154  38 80 00 00 */	li r4, 0
/* 80A8B158  4B FF E1 7D */	bl way_bg_check__FP12npc_ne_classs
/* 80A8B15C  7C 7B 1B 78 */	mr r27, r3
lbl_80A8B160:
/* 80A8B160  2C 1B 00 00 */	cmpwi r27, 0
/* 80A8B164  40 82 00 1C */	bne lbl_80A8B180
/* 80A8B168  80 1E 07 70 */	lwz r0, 0x770(r30)
/* 80A8B16C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80A8B170  40 82 00 10 */	bne lbl_80A8B180
/* 80A8B174  A8 1E 06 40 */	lha r0, 0x640(r30)
/* 80A8B178  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80A8B17C  40 82 00 38 */	bne lbl_80A8B1B4
lbl_80A8B180:
/* 80A8B180  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80A8B184  4B 7D C8 09 */	bl cM_rndFX__Ff
/* 80A8B188  FC 00 08 1E */	fctiwz f0, f1
/* 80A8B18C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A8B190  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A8B194  A8 7E 05 DC */	lha r3, 0x5dc(r30)
/* 80A8B198  3C 03 00 01 */	addis r0, r3, 1
/* 80A8B19C  7C 60 22 14 */	add r3, r0, r4
/* 80A8B1A0  38 03 80 00 */	addi r0, r3, -32768
/* 80A8B1A4  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 80A8B1A8  7F C3 F3 78 */	mr r3, r30
/* 80A8B1AC  A8 9E 05 D0 */	lha r4, 0x5d0(r30)
/* 80A8B1B0  4B FF EB 79 */	bl way_check__FP12npc_ne_classs
lbl_80A8B1B4:
/* 80A8B1B4  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8B1B8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A8B1BC  EC 00 F0 2A */	fadds f0, f0, f30
/* 80A8B1C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B1C4  40 81 01 0C */	ble lbl_80A8B2D0
/* 80A8B1C8  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A8B1CC  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8B1D0  7F C3 F3 78 */	mr r3, r30
/* 80A8B1D4  38 80 00 19 */	li r4, 0x19
/* 80A8B1D8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8B1DC  38 A0 00 02 */	li r5, 2
/* 80A8B1E0  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8B1E4  4B FF DB 31 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8B1E8  38 00 00 01 */	li r0, 1
/* 80A8B1EC  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8B1F0  48 00 00 E0 */	b lbl_80A8B2D0
lbl_80A8B1F4:
/* 80A8B1F4  A8 1E 05 DC */	lha r0, 0x5dc(r30)
/* 80A8B1F8  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 80A8B1FC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A8B200  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8B204  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80A8B208  4B 7E 48 79 */	bl cLib_addCalc0__FPfff
/* 80A8B20C  A8 7E 05 D0 */	lha r3, 0x5d0(r30)
/* 80A8B210  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8B214  7C 03 00 50 */	subf r0, r3, r0
/* 80A8B218  7C 03 07 34 */	extsh r3, r0
/* 80A8B21C  A8 1E 06 46 */	lha r0, 0x646(r30)
/* 80A8B220  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A8B224  40 82 00 40 */	bne lbl_80A8B264
/* 80A8B228  2C 03 04 00 */	cmpwi r3, 0x400
/* 80A8B22C  41 81 00 0C */	bgt lbl_80A8B238
/* 80A8B230  2C 03 FC 00 */	cmpwi r3, -1024
/* 80A8B234  40 80 00 80 */	bge lbl_80A8B2B4
lbl_80A8B238:
/* 80A8B238  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8B23C  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8B240  7F C3 F3 78 */	mr r3, r30
/* 80A8B244  38 80 00 19 */	li r4, 0x19
/* 80A8B248  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8B24C  38 A0 00 02 */	li r5, 2
/* 80A8B250  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8B254  4B FF DA C1 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8B258  38 00 00 0B */	li r0, 0xb
/* 80A8B25C  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8B260  48 00 00 54 */	b lbl_80A8B2B4
lbl_80A8B264:
/* 80A8B264  3B 80 06 00 */	li r28, 0x600
/* 80A8B268  38 00 00 00 */	li r0, 0
/* 80A8B26C  B0 1E 06 7A */	sth r0, 0x67a(r30)
/* 80A8B270  2C 03 04 00 */	cmpwi r3, 0x400
/* 80A8B274  41 81 00 40 */	bgt lbl_80A8B2B4
/* 80A8B278  2C 03 FC 00 */	cmpwi r3, -1024
/* 80A8B27C  41 80 00 38 */	blt lbl_80A8B2B4
/* 80A8B280  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80A8B284  4B 7D C6 D1 */	bl cM_rndF__Ff
/* 80A8B288  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8B28C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8B290  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8B294  7F C3 F3 78 */	mr r3, r30
/* 80A8B298  38 80 00 18 */	li r4, 0x18
/* 80A8B29C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8B2A0  38 A0 00 02 */	li r5, 2
/* 80A8B2A4  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8B2A8  4B FF DA 6D */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8B2AC  38 00 00 0A */	li r0, 0xa
/* 80A8B2B0  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8B2B4:
/* 80A8B2B4  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 80A8B2B8  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80A8B2BC  40 80 00 14 */	bge lbl_80A8B2D0
/* 80A8B2C0  38 00 00 07 */	li r0, 7
/* 80A8B2C4  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8B2C8  38 00 00 14 */	li r0, 0x14
/* 80A8B2CC  B0 1E 06 50 */	sth r0, 0x650(r30)
lbl_80A8B2D0:
/* 80A8B2D0  A8 1E 06 46 */	lha r0, 0x646(r30)
/* 80A8B2D4  2C 00 00 07 */	cmpwi r0, 7
/* 80A8B2D8  40 80 00 88 */	bge lbl_80A8B360
/* 80A8B2DC  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 80A8B2E0  2C 00 00 00 */	cmpwi r0, 0
/* 80A8B2E4  40 82 00 A0 */	bne lbl_80A8B384
/* 80A8B2E8  7F C3 F3 78 */	mr r3, r30
/* 80A8B2EC  38 80 00 00 */	li r4, 0
/* 80A8B2F0  4B FF DF E5 */	bl way_bg_check__FP12npc_ne_classs
/* 80A8B2F4  7C 7B 1B 79 */	or. r27, r3, r3
/* 80A8B2F8  41 82 00 8C */	beq lbl_80A8B384
/* 80A8B2FC  2C 1B FF FF */	cmpwi r27, -1
/* 80A8B300  40 82 00 18 */	bne lbl_80A8B318
/* 80A8B304  38 00 00 0E */	li r0, 0xe
/* 80A8B308  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8B30C  38 00 00 00 */	li r0, 0
/* 80A8B310  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8B314  48 00 00 70 */	b lbl_80A8B384
lbl_80A8B318:
/* 80A8B318  38 00 00 0A */	li r0, 0xa
/* 80A8B31C  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8B320  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80A8B324  4B 7D C6 31 */	bl cM_rndF__Ff
/* 80A8B328  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8B32C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8B330  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8B334  7F C3 F3 78 */	mr r3, r30
/* 80A8B338  38 80 00 18 */	li r4, 0x18
/* 80A8B33C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8B340  38 A0 00 02 */	li r5, 2
/* 80A8B344  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8B348  4B FF D9 CD */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8B34C  2C 1B 00 02 */	cmpwi r27, 2
/* 80A8B350  41 80 00 34 */	blt lbl_80A8B384
/* 80A8B354  38 00 00 1E */	li r0, 0x1e
/* 80A8B358  B0 1E 06 7A */	sth r0, 0x67a(r30)
/* 80A8B35C  48 00 00 28 */	b lbl_80A8B384
lbl_80A8B360:
/* 80A8B360  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A8B364  41 80 00 20 */	blt lbl_80A8B384
/* 80A8B368  7F C3 F3 78 */	mr r3, r30
/* 80A8B36C  38 80 00 00 */	li r4, 0
/* 80A8B370  4B FF DF 65 */	bl way_bg_check__FP12npc_ne_classs
/* 80A8B374  2C 03 00 00 */	cmpwi r3, 0
/* 80A8B378  40 82 00 0C */	bne lbl_80A8B384
/* 80A8B37C  38 00 00 00 */	li r0, 0
/* 80A8B380  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8B384:
/* 80A8B384  AB 7E 04 DE */	lha r27, 0x4de(r30)
/* 80A8B388  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80A8B38C  A8 9E 05 D0 */	lha r4, 0x5d0(r30)
/* 80A8B390  38 A0 00 04 */	li r5, 4
/* 80A8B394  7F 86 E3 78 */	mr r6, r28
/* 80A8B398  4B 7E 52 71 */	bl cLib_addCalcAngleS2__FPssss
/* 80A8B39C  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80A8B3A0  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80A8B3A4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8B3A8  7C 1B 00 50 */	subf r0, r27, r0
/* 80A8B3AC  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 80A8B3B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A8B3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A8B3B8  3C 00 43 30 */	lis r0, 0x4330
/* 80A8B3BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A8B3C0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80A8B3C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A8B3C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A8B3CC  EC 23 00 32 */	fmuls f1, f3, f0
/* 80A8B3D0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80A8B3D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B3D8  40 81 00 0C */	ble lbl_80A8B3E4
/* 80A8B3DC  FC 20 00 90 */	fmr f1, f0
/* 80A8B3E0  48 00 00 14 */	b lbl_80A8B3F4
lbl_80A8B3E4:
/* 80A8B3E4  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80A8B3E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B3EC  40 80 00 08 */	bge lbl_80A8B3F4
/* 80A8B3F0  FC 20 00 90 */	fmr f1, f0
lbl_80A8B3F4:
/* 80A8B3F4  FC 00 08 1E */	fctiwz f0, f1
/* 80A8B3F8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A8B3FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8B400  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80A8B404  7F 80 07 34 */	extsh r0, r28
/* 80A8B408  2C 00 06 00 */	cmpwi r0, 0x600
/* 80A8B40C  40 81 00 6C */	ble lbl_80A8B478
/* 80A8B410  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80A8B414  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80A8B418  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8B41C  7C 1B 00 50 */	subf r0, r27, r0
/* 80A8B420  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 80A8B424  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A8B428  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A8B42C  3C 00 43 30 */	lis r0, 0x4330
/* 80A8B430  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A8B434  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80A8B438  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A8B43C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A8B440  EC 23 00 32 */	fmuls f1, f3, f0
/* 80A8B444  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80A8B448  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B44C  40 81 00 0C */	ble lbl_80A8B458
/* 80A8B450  FC 20 00 90 */	fmr f1, f0
/* 80A8B454  48 00 00 14 */	b lbl_80A8B468
lbl_80A8B458:
/* 80A8B458  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80A8B45C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B460  40 80 00 08 */	bge lbl_80A8B468
/* 80A8B464  FC 20 00 90 */	fmr f1, f0
lbl_80A8B468:
/* 80A8B468  FC 00 08 1E */	fctiwz f0, f1
/* 80A8B46C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A8B470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8B474  B0 1E 06 96 */	sth r0, 0x696(r30)
lbl_80A8B478:
/* 80A8B478  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80A8B47C  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A8B480  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A8B484  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A8B488  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8B48C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80A8B490  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80A8B494  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80A8B498  A0 84 03 AC */	lhz r4, 0x3ac(r4)
/* 80A8B49C  4B 5A 95 21 */	bl isEventBit__11dSv_event_cCFUs
/* 80A8B4A0  2C 03 00 00 */	cmpwi r3, 0
/* 80A8B4A4  41 82 00 2C */	beq lbl_80A8B4D0
/* 80A8B4A8  3C 60 80 A9 */	lis r3, s_fish_sub__FPvPv@ha /* 0x80A8AAE8@ha */
/* 80A8B4AC  38 63 AA E8 */	addi r3, r3, s_fish_sub__FPvPv@l /* 0x80A8AAE8@l */
/* 80A8B4B0  7F C4 F3 78 */	mr r4, r30
/* 80A8B4B4  4B 59 5E 85 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A8B4B8  28 03 00 00 */	cmplwi r3, 0
/* 80A8B4BC  41 82 00 14 */	beq lbl_80A8B4D0
/* 80A8B4C0  38 00 00 04 */	li r0, 4
/* 80A8B4C4  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8B4C8  38 00 00 0A */	li r0, 0xa
/* 80A8B4CC  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8B4D0:
/* 80A8B4D0  A8 1E 06 40 */	lha r0, 0x640(r30)
/* 80A8B4D4  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 80A8B4D8  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A8B4DC  40 82 00 24 */	bne lbl_80A8B500
/* 80A8B4E0  7F C3 F3 78 */	mr r3, r30
/* 80A8B4E4  7F A4 EB 78 */	mr r4, r29
/* 80A8B4E8  4B FF DC B5 */	bl other_bg_check__FP10fopAc_ac_cP10fopAc_ac_c
/* 80A8B4EC  2C 03 00 00 */	cmpwi r3, 0
/* 80A8B4F0  41 82 00 10 */	beq lbl_80A8B500
/* 80A8B4F4  38 00 00 00 */	li r0, 0
/* 80A8B4F8  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8B4FC  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8B500:
/* 80A8B500  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A8B504  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A8B508  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80A8B50C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80A8B510  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 80A8B514  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80A8B518  39 61 00 30 */	addi r11, r1, 0x30
/* 80A8B51C  4B 8D 6D 05 */	bl _restgpr_27
/* 80A8B520  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A8B524  7C 08 03 A6 */	mtlr r0
/* 80A8B528  38 21 00 60 */	addi r1, r1, 0x60
/* 80A8B52C  4E 80 00 20 */	blr 
