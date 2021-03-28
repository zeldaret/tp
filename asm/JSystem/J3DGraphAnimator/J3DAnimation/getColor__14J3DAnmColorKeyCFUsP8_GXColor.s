lbl_8032AB54:
/* 8032AB54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8032AB58  7C 08 02 A6 */	mflr r0
/* 8032AB5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8032AB60  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8032AB64  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8032AB68  39 61 00 30 */	addi r11, r1, 0x30
/* 8032AB6C  48 03 76 71 */	bl _savegpr_29
/* 8032AB70  7C 7D 1B 78 */	mr r29, r3
/* 8032AB74  7C BE 2B 78 */	mr r30, r5
/* 8032AB78  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8032AB7C  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8032AB80  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8032AB84  7F E3 02 14 */	add r31, r3, r0
/* 8032AB88  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8032AB8C  2C 00 00 01 */	cmpwi r0, 1
/* 8032AB90  41 82 00 20 */	beq lbl_8032ABB0
/* 8032AB94  40 80 00 34 */	bge lbl_8032ABC8
/* 8032AB98  2C 00 00 00 */	cmpwi r0, 0
/* 8032AB9C  40 80 00 08 */	bge lbl_8032ABA4
/* 8032ABA0  48 00 00 28 */	b lbl_8032ABC8
lbl_8032ABA4:
/* 8032ABA4  38 00 00 00 */	li r0, 0
/* 8032ABA8  98 1E 00 00 */	stb r0, 0(r30)
/* 8032ABAC  48 00 00 78 */	b lbl_8032AC24
lbl_8032ABB0:
/* 8032ABB0  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 8032ABB4  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8032ABB8  54 00 08 3C */	slwi r0, r0, 1
/* 8032ABBC  7C 03 02 AE */	lhax r0, r3, r0
/* 8032ABC0  98 1E 00 00 */	stb r0, 0(r30)
/* 8032ABC4  48 00 00 60 */	b lbl_8032AC24
lbl_8032ABC8:
/* 8032ABC8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8032ABCC  7F E3 FB 78 */	mr r3, r31
/* 8032ABD0  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 8032ABD4  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8032ABD8  54 00 08 3C */	slwi r0, r0, 1
/* 8032ABDC  7C 84 02 14 */	add r4, r4, r0
/* 8032ABE0  48 00 0C C1 */	bl func_8032B8A0
/* 8032ABE4  FF E0 08 90 */	fmr f31, f1
/* 8032ABE8  C0 02 CA 34 */	lfs f0, lit_853(r2)
/* 8032ABEC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8032ABF0  40 80 00 10 */	bge lbl_8032AC00
/* 8032ABF4  38 00 00 00 */	li r0, 0
/* 8032ABF8  98 1E 00 00 */	stb r0, 0(r30)
/* 8032ABFC  48 00 00 28 */	b lbl_8032AC24
lbl_8032AC00:
/* 8032AC00  C0 02 CA 58 */	lfs f0, lit_1499(r2)
/* 8032AC04  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8032AC08  40 81 00 10 */	ble lbl_8032AC18
/* 8032AC0C  38 00 00 FF */	li r0, 0xff
/* 8032AC10  98 1E 00 00 */	stb r0, 0(r30)
/* 8032AC14  48 00 00 10 */	b lbl_8032AC24
lbl_8032AC18:
/* 8032AC18  F3 E1 A0 14 */	psq_st f31, 20(r1), 1, 2 /* qr2 */
/* 8032AC1C  88 01 00 14 */	lbz r0, 0x14(r1)
/* 8032AC20  98 1E 00 00 */	stb r0, 0(r30)
lbl_8032AC24:
/* 8032AC24  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8032AC28  2C 00 00 01 */	cmpwi r0, 1
/* 8032AC2C  41 82 00 20 */	beq lbl_8032AC4C
/* 8032AC30  40 80 00 34 */	bge lbl_8032AC64
/* 8032AC34  2C 00 00 00 */	cmpwi r0, 0
/* 8032AC38  40 80 00 08 */	bge lbl_8032AC40
/* 8032AC3C  48 00 00 28 */	b lbl_8032AC64
lbl_8032AC40:
/* 8032AC40  38 00 00 00 */	li r0, 0
/* 8032AC44  98 1E 00 01 */	stb r0, 1(r30)
/* 8032AC48  48 00 00 78 */	b lbl_8032ACC0
lbl_8032AC4C:
/* 8032AC4C  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 8032AC50  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8032AC54  54 00 08 3C */	slwi r0, r0, 1
/* 8032AC58  7C 03 02 AE */	lhax r0, r3, r0
/* 8032AC5C  98 1E 00 01 */	stb r0, 1(r30)
/* 8032AC60  48 00 00 60 */	b lbl_8032ACC0
lbl_8032AC64:
/* 8032AC64  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8032AC68  38 7F 00 06 */	addi r3, r31, 6
/* 8032AC6C  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 8032AC70  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8032AC74  54 00 08 3C */	slwi r0, r0, 1
/* 8032AC78  7C 84 02 14 */	add r4, r4, r0
/* 8032AC7C  48 00 0C 25 */	bl func_8032B8A0
/* 8032AC80  FF E0 08 90 */	fmr f31, f1
/* 8032AC84  C0 02 CA 34 */	lfs f0, lit_853(r2)
/* 8032AC88  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8032AC8C  40 80 00 10 */	bge lbl_8032AC9C
/* 8032AC90  38 00 00 00 */	li r0, 0
/* 8032AC94  98 1E 00 01 */	stb r0, 1(r30)
/* 8032AC98  48 00 00 28 */	b lbl_8032ACC0
lbl_8032AC9C:
/* 8032AC9C  C0 02 CA 58 */	lfs f0, lit_1499(r2)
/* 8032ACA0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8032ACA4  40 81 00 10 */	ble lbl_8032ACB4
/* 8032ACA8  38 00 00 FF */	li r0, 0xff
/* 8032ACAC  98 1E 00 01 */	stb r0, 1(r30)
/* 8032ACB0  48 00 00 10 */	b lbl_8032ACC0
lbl_8032ACB4:
/* 8032ACB4  F3 E1 A0 10 */	psq_st f31, 16(r1), 1, 2 /* qr2 */
/* 8032ACB8  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8032ACBC  98 1E 00 01 */	stb r0, 1(r30)
lbl_8032ACC0:
/* 8032ACC0  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 8032ACC4  2C 00 00 01 */	cmpwi r0, 1
/* 8032ACC8  41 82 00 20 */	beq lbl_8032ACE8
/* 8032ACCC  40 80 00 34 */	bge lbl_8032AD00
/* 8032ACD0  2C 00 00 00 */	cmpwi r0, 0
/* 8032ACD4  40 80 00 08 */	bge lbl_8032ACDC
/* 8032ACD8  48 00 00 28 */	b lbl_8032AD00
lbl_8032ACDC:
/* 8032ACDC  38 00 00 00 */	li r0, 0
/* 8032ACE0  98 1E 00 02 */	stb r0, 2(r30)
/* 8032ACE4  48 00 00 78 */	b lbl_8032AD5C
lbl_8032ACE8:
/* 8032ACE8  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 8032ACEC  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8032ACF0  54 00 08 3C */	slwi r0, r0, 1
/* 8032ACF4  7C 03 02 AE */	lhax r0, r3, r0
/* 8032ACF8  98 1E 00 02 */	stb r0, 2(r30)
/* 8032ACFC  48 00 00 60 */	b lbl_8032AD5C
lbl_8032AD00:
/* 8032AD00  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8032AD04  38 7F 00 0C */	addi r3, r31, 0xc
/* 8032AD08  80 9D 00 34 */	lwz r4, 0x34(r29)
/* 8032AD0C  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8032AD10  54 00 08 3C */	slwi r0, r0, 1
/* 8032AD14  7C 84 02 14 */	add r4, r4, r0
/* 8032AD18  48 00 0B 89 */	bl func_8032B8A0
/* 8032AD1C  FF E0 08 90 */	fmr f31, f1
/* 8032AD20  C0 02 CA 34 */	lfs f0, lit_853(r2)
/* 8032AD24  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8032AD28  40 80 00 10 */	bge lbl_8032AD38
/* 8032AD2C  38 00 00 00 */	li r0, 0
/* 8032AD30  98 1E 00 02 */	stb r0, 2(r30)
/* 8032AD34  48 00 00 28 */	b lbl_8032AD5C
lbl_8032AD38:
/* 8032AD38  C0 02 CA 58 */	lfs f0, lit_1499(r2)
/* 8032AD3C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8032AD40  40 81 00 10 */	ble lbl_8032AD50
/* 8032AD44  38 00 00 FF */	li r0, 0xff
/* 8032AD48  98 1E 00 02 */	stb r0, 2(r30)
/* 8032AD4C  48 00 00 10 */	b lbl_8032AD5C
lbl_8032AD50:
/* 8032AD50  F3 E1 A0 0C */	psq_st f31, 12(r1), 1, 2 /* qr2 */
/* 8032AD54  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8032AD58  98 1E 00 02 */	stb r0, 2(r30)
lbl_8032AD5C:
/* 8032AD5C  A0 1F 00 12 */	lhz r0, 0x12(r31)
/* 8032AD60  2C 00 00 01 */	cmpwi r0, 1
/* 8032AD64  41 82 00 20 */	beq lbl_8032AD84
/* 8032AD68  40 80 00 34 */	bge lbl_8032AD9C
/* 8032AD6C  2C 00 00 00 */	cmpwi r0, 0
/* 8032AD70  40 80 00 08 */	bge lbl_8032AD78
/* 8032AD74  48 00 00 28 */	b lbl_8032AD9C
lbl_8032AD78:
/* 8032AD78  38 00 00 00 */	li r0, 0
/* 8032AD7C  98 1E 00 03 */	stb r0, 3(r30)
/* 8032AD80  48 00 00 78 */	b lbl_8032ADF8
lbl_8032AD84:
/* 8032AD84  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8032AD88  A0 1F 00 14 */	lhz r0, 0x14(r31)
/* 8032AD8C  54 00 08 3C */	slwi r0, r0, 1
/* 8032AD90  7C 03 02 AE */	lhax r0, r3, r0
/* 8032AD94  98 1E 00 03 */	stb r0, 3(r30)
/* 8032AD98  48 00 00 60 */	b lbl_8032ADF8
lbl_8032AD9C:
/* 8032AD9C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8032ADA0  38 7F 00 12 */	addi r3, r31, 0x12
/* 8032ADA4  80 9D 00 38 */	lwz r4, 0x38(r29)
/* 8032ADA8  A0 1F 00 14 */	lhz r0, 0x14(r31)
/* 8032ADAC  54 00 08 3C */	slwi r0, r0, 1
/* 8032ADB0  7C 84 02 14 */	add r4, r4, r0
/* 8032ADB4  48 00 0A ED */	bl func_8032B8A0
/* 8032ADB8  FF E0 08 90 */	fmr f31, f1
/* 8032ADBC  C0 02 CA 34 */	lfs f0, lit_853(r2)
/* 8032ADC0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8032ADC4  40 80 00 10 */	bge lbl_8032ADD4
/* 8032ADC8  38 00 00 00 */	li r0, 0
/* 8032ADCC  98 1E 00 03 */	stb r0, 3(r30)
/* 8032ADD0  48 00 00 28 */	b lbl_8032ADF8
lbl_8032ADD4:
/* 8032ADD4  C0 02 CA 58 */	lfs f0, lit_1499(r2)
/* 8032ADD8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8032ADDC  40 81 00 10 */	ble lbl_8032ADEC
/* 8032ADE0  38 00 00 FF */	li r0, 0xff
/* 8032ADE4  98 1E 00 03 */	stb r0, 3(r30)
/* 8032ADE8  48 00 00 10 */	b lbl_8032ADF8
lbl_8032ADEC:
/* 8032ADEC  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, 2 /* qr2 */
/* 8032ADF0  88 01 00 08 */	lbz r0, 8(r1)
/* 8032ADF4  98 1E 00 03 */	stb r0, 3(r30)
lbl_8032ADF8:
/* 8032ADF8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8032ADFC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8032AE00  39 61 00 30 */	addi r11, r1, 0x30
/* 8032AE04  48 03 74 25 */	bl _restgpr_29
/* 8032AE08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8032AE0C  7C 08 03 A6 */	mtlr r0
/* 8032AE10  38 21 00 40 */	addi r1, r1, 0x40
/* 8032AE14  4E 80 00 20 */	blr 
