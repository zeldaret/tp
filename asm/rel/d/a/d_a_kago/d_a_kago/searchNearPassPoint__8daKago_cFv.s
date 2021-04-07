lbl_8084AC2C:
/* 8084AC2C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8084AC30  7C 08 02 A6 */	mflr r0
/* 8084AC34  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8084AC38  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8084AC3C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8084AC40  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8084AC44  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 8084AC48  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8084AC4C  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 8084AC50  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 8084AC54  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 8084AC58  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 8084AC5C  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 8084AC60  39 61 00 50 */	addi r11, r1, 0x50
/* 8084AC64  4B B1 75 75 */	bl _savegpr_28
/* 8084AC68  7C 7E 1B 78 */	mr r30, r3
/* 8084AC6C  3C 60 80 85 */	lis r3, lit_3929@ha /* 0x80854B04@ha */
/* 8084AC70  3B A3 4B 04 */	addi r29, r3, lit_3929@l /* 0x80854B04@l */
/* 8084AC74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084AC78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084AC7C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8084AC80  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 8084AC84  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8084AC88  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8084AC8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8084AC90  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8084AC94  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8084AC98  C3 9D 00 C4 */	lfs f28, 0xc4(r29)
/* 8084AC9C  FF 60 E0 90 */	fmr f27, f28
/* 8084ACA0  3B 80 00 00 */	li r28, 0
/* 8084ACA4  FF A0 08 18 */	frsp f29, f1
/* 8084ACA8  C3 DD 00 34 */	lfs f30, 0x34(r29)
/* 8084ACAC  FF E0 00 18 */	frsp f31, f0
/* 8084ACB0  48 00 01 50 */	b lbl_8084AE00
lbl_8084ACB4:
/* 8084ACB4  7F 84 E3 78 */	mr r4, r28
/* 8084ACB8  4B 80 6A F9 */	bl dPath_GetPnt__FPC5dPathi
/* 8084ACBC  C0 23 00 04 */	lfs f1, 4(r3)
/* 8084ACC0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8084ACC4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084ACC8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8084ACCC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084ACD0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8084ACD4  D3 A1 00 0C */	stfs f29, 0xc(r1)
/* 8084ACD8  D3 C1 00 10 */	stfs f30, 0x10(r1)
/* 8084ACDC  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 8084ACE0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8084ACE4  D3 C1 00 1C */	stfs f30, 0x1c(r1)
/* 8084ACE8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8084ACEC  38 61 00 0C */	addi r3, r1, 0xc
/* 8084ACF0  38 81 00 18 */	addi r4, r1, 0x18
/* 8084ACF4  4B AF C6 A9 */	bl PSVECSquareDistance
/* 8084ACF8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8084ACFC  40 81 00 58 */	ble lbl_8084AD54
/* 8084AD00  FC 00 08 34 */	frsqrte f0, f1
/* 8084AD04  C8 9D 00 48 */	lfd f4, 0x48(r29)
/* 8084AD08  FC 44 00 32 */	fmul f2, f4, f0
/* 8084AD0C  C8 7D 00 50 */	lfd f3, 0x50(r29)
/* 8084AD10  FC 00 00 32 */	fmul f0, f0, f0
/* 8084AD14  FC 01 00 32 */	fmul f0, f1, f0
/* 8084AD18  FC 03 00 28 */	fsub f0, f3, f0
/* 8084AD1C  FC 02 00 32 */	fmul f0, f2, f0
/* 8084AD20  FC 44 00 32 */	fmul f2, f4, f0
/* 8084AD24  FC 00 00 32 */	fmul f0, f0, f0
/* 8084AD28  FC 01 00 32 */	fmul f0, f1, f0
/* 8084AD2C  FC 03 00 28 */	fsub f0, f3, f0
/* 8084AD30  FC 02 00 32 */	fmul f0, f2, f0
/* 8084AD34  FC 44 00 32 */	fmul f2, f4, f0
/* 8084AD38  FC 00 00 32 */	fmul f0, f0, f0
/* 8084AD3C  FC 01 00 32 */	fmul f0, f1, f0
/* 8084AD40  FC 03 00 28 */	fsub f0, f3, f0
/* 8084AD44  FC 02 00 32 */	fmul f0, f2, f0
/* 8084AD48  FC 21 00 32 */	fmul f1, f1, f0
/* 8084AD4C  FC 20 08 18 */	frsp f1, f1
/* 8084AD50  48 00 00 88 */	b lbl_8084ADD8
lbl_8084AD54:
/* 8084AD54  C8 1D 00 58 */	lfd f0, 0x58(r29)
/* 8084AD58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084AD5C  40 80 00 10 */	bge lbl_8084AD6C
/* 8084AD60  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8084AD64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8084AD68  48 00 00 70 */	b lbl_8084ADD8
lbl_8084AD6C:
/* 8084AD6C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8084AD70  80 81 00 08 */	lwz r4, 8(r1)
/* 8084AD74  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8084AD78  3C 00 7F 80 */	lis r0, 0x7f80
/* 8084AD7C  7C 03 00 00 */	cmpw r3, r0
/* 8084AD80  41 82 00 14 */	beq lbl_8084AD94
/* 8084AD84  40 80 00 40 */	bge lbl_8084ADC4
/* 8084AD88  2C 03 00 00 */	cmpwi r3, 0
/* 8084AD8C  41 82 00 20 */	beq lbl_8084ADAC
/* 8084AD90  48 00 00 34 */	b lbl_8084ADC4
lbl_8084AD94:
/* 8084AD94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8084AD98  41 82 00 0C */	beq lbl_8084ADA4
/* 8084AD9C  38 00 00 01 */	li r0, 1
/* 8084ADA0  48 00 00 28 */	b lbl_8084ADC8
lbl_8084ADA4:
/* 8084ADA4  38 00 00 02 */	li r0, 2
/* 8084ADA8  48 00 00 20 */	b lbl_8084ADC8
lbl_8084ADAC:
/* 8084ADAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8084ADB0  41 82 00 0C */	beq lbl_8084ADBC
/* 8084ADB4  38 00 00 05 */	li r0, 5
/* 8084ADB8  48 00 00 10 */	b lbl_8084ADC8
lbl_8084ADBC:
/* 8084ADBC  38 00 00 03 */	li r0, 3
/* 8084ADC0  48 00 00 08 */	b lbl_8084ADC8
lbl_8084ADC4:
/* 8084ADC4  38 00 00 04 */	li r0, 4
lbl_8084ADC8:
/* 8084ADC8  2C 00 00 01 */	cmpwi r0, 1
/* 8084ADCC  40 82 00 0C */	bne lbl_8084ADD8
/* 8084ADD0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8084ADD4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8084ADD8:
/* 8084ADD8  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 8084ADDC  40 80 00 14 */	bge lbl_8084ADF0
/* 8084ADE0  FF 80 D8 90 */	fmr f28, f27
/* 8084ADE4  FF 60 08 90 */	fmr f27, f1
/* 8084ADE8  7F 9F E3 78 */	mr r31, r28
/* 8084ADEC  48 00 00 10 */	b lbl_8084ADFC
lbl_8084ADF0:
/* 8084ADF0  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 8084ADF4  40 80 00 08 */	bge lbl_8084ADFC
/* 8084ADF8  FF 80 08 90 */	fmr f28, f1
lbl_8084ADFC:
/* 8084ADFC  3B 9C 00 01 */	addi r28, r28, 1
lbl_8084AE00:
/* 8084AE00  80 7E 07 68 */	lwz r3, 0x768(r30)
/* 8084AE04  A0 83 00 00 */	lhz r4, 0(r3)
/* 8084AE08  7C 1C 20 00 */	cmpw r28, r4
/* 8084AE0C  41 80 FE A8 */	blt lbl_8084ACB4
/* 8084AE10  88 1E 07 72 */	lbz r0, 0x772(r30)
/* 8084AE14  7C 00 07 74 */	extsb r0, r0
/* 8084AE18  7C 1F 02 15 */	add. r0, r31, r0
/* 8084AE1C  40 80 00 0C */	bge lbl_8084AE28
/* 8084AE20  38 00 00 01 */	li r0, 1
/* 8084AE24  48 00 00 10 */	b lbl_8084AE34
lbl_8084AE28:
/* 8084AE28  7C 00 20 00 */	cmpw r0, r4
/* 8084AE2C  41 80 00 08 */	blt lbl_8084AE34
/* 8084AE30  38 04 FF FF */	addi r0, r4, -1
lbl_8084AE34:
/* 8084AE34  7C 03 07 74 */	extsb r3, r0
/* 8084AE38  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8084AE3C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8084AE40  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 8084AE44  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8084AE48  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 8084AE4C  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 8084AE50  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 8084AE54  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 8084AE58  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 8084AE5C  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 8084AE60  39 61 00 50 */	addi r11, r1, 0x50
/* 8084AE64  4B B1 73 C1 */	bl _restgpr_28
/* 8084AE68  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8084AE6C  7C 08 03 A6 */	mtlr r0
/* 8084AE70  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8084AE74  4E 80 00 20 */	blr 
