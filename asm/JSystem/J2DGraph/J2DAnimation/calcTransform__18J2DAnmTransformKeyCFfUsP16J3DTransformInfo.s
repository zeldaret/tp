lbl_8030AAFC:
/* 8030AAFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8030AB00  7C 08 02 A6 */	mflr r0
/* 8030AB04  90 01 00 44 */	stw r0, 0x44(r1)
/* 8030AB08  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8030AB0C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8030AB10  39 61 00 30 */	addi r11, r1, 0x30
/* 8030AB14  48 05 76 C1 */	bl _savegpr_27
/* 8030AB18  7C 7B 1B 78 */	mr r27, r3
/* 8030AB1C  FF E0 08 90 */	fmr f31, f1
/* 8030AB20  7C BC 2B 78 */	mr r28, r5
/* 8030AB24  1C 04 00 03 */	mulli r0, r4, 3
/* 8030AB28  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8030AB2C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8030AB30  1C 04 00 12 */	mulli r0, r4, 0x12
/* 8030AB34  7F E3 02 14 */	add r31, r3, r0
/* 8030AB38  38 04 00 01 */	addi r0, r4, 1
/* 8030AB3C  1C 00 00 12 */	mulli r0, r0, 0x12
/* 8030AB40  7F C3 02 14 */	add r30, r3, r0
/* 8030AB44  38 04 00 02 */	addi r0, r4, 2
/* 8030AB48  1C 00 00 12 */	mulli r0, r0, 0x12
/* 8030AB4C  7F A3 02 14 */	add r29, r3, r0
/* 8030AB50  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8030AB54  2C 00 00 01 */	cmpwi r0, 1
/* 8030AB58  41 82 00 20 */	beq lbl_8030AB78
/* 8030AB5C  40 80 00 34 */	bge lbl_8030AB90
/* 8030AB60  2C 00 00 00 */	cmpwi r0, 0
/* 8030AB64  40 80 00 08 */	bge lbl_8030AB6C
/* 8030AB68  48 00 00 28 */	b lbl_8030AB90
lbl_8030AB6C:
/* 8030AB6C  C0 02 C9 10 */	lfs f0, lit_1619(r2)
/* 8030AB70  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8030AB74  48 00 00 3C */	b lbl_8030ABB0
lbl_8030AB78:
/* 8030AB78  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8030AB7C  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8030AB80  54 00 10 3A */	slwi r0, r0, 2
/* 8030AB84  7C 03 04 2E */	lfsx f0, r3, r0
/* 8030AB88  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8030AB8C  48 00 00 24 */	b lbl_8030ABB0
lbl_8030AB90:
/* 8030AB90  FC 20 F8 90 */	fmr f1, f31
/* 8030AB94  7F E3 FB 78 */	mr r3, r31
/* 8030AB98  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 8030AB9C  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8030ABA0  54 00 10 3A */	slwi r0, r0, 2
/* 8030ABA4  7C 84 02 14 */	add r4, r4, r0
/* 8030ABA8  48 00 1E 09 */	bl func_8030C9B0
/* 8030ABAC  D0 3C 00 00 */	stfs f1, 0(r28)
lbl_8030ABB0:
/* 8030ABB0  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8030ABB4  2C 00 00 01 */	cmpwi r0, 1
/* 8030ABB8  41 82 00 20 */	beq lbl_8030ABD8
/* 8030ABBC  40 80 00 34 */	bge lbl_8030ABF0
/* 8030ABC0  2C 00 00 00 */	cmpwi r0, 0
/* 8030ABC4  40 80 00 08 */	bge lbl_8030ABCC
/* 8030ABC8  48 00 00 28 */	b lbl_8030ABF0
lbl_8030ABCC:
/* 8030ABCC  C0 02 C9 10 */	lfs f0, lit_1619(r2)
/* 8030ABD0  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8030ABD4  48 00 00 3C */	b lbl_8030AC10
lbl_8030ABD8:
/* 8030ABD8  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8030ABDC  A0 1E 00 02 */	lhz r0, 2(r30)
/* 8030ABE0  54 00 10 3A */	slwi r0, r0, 2
/* 8030ABE4  7C 03 04 2E */	lfsx f0, r3, r0
/* 8030ABE8  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8030ABEC  48 00 00 24 */	b lbl_8030AC10
lbl_8030ABF0:
/* 8030ABF0  FC 20 F8 90 */	fmr f1, f31
/* 8030ABF4  7F C3 F3 78 */	mr r3, r30
/* 8030ABF8  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 8030ABFC  A0 1E 00 02 */	lhz r0, 2(r30)
/* 8030AC00  54 00 10 3A */	slwi r0, r0, 2
/* 8030AC04  7C 84 02 14 */	add r4, r4, r0
/* 8030AC08  48 00 1D A9 */	bl func_8030C9B0
/* 8030AC0C  D0 3C 00 04 */	stfs f1, 4(r28)
lbl_8030AC10:
/* 8030AC10  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8030AC14  2C 00 00 01 */	cmpwi r0, 1
/* 8030AC18  41 82 00 20 */	beq lbl_8030AC38
/* 8030AC1C  40 80 00 34 */	bge lbl_8030AC50
/* 8030AC20  2C 00 00 00 */	cmpwi r0, 0
/* 8030AC24  40 80 00 08 */	bge lbl_8030AC2C
/* 8030AC28  48 00 00 28 */	b lbl_8030AC50
lbl_8030AC2C:
/* 8030AC2C  C0 02 C9 10 */	lfs f0, lit_1619(r2)
/* 8030AC30  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8030AC34  48 00 00 3C */	b lbl_8030AC70
lbl_8030AC38:
/* 8030AC38  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8030AC3C  A0 1D 00 02 */	lhz r0, 2(r29)
/* 8030AC40  54 00 10 3A */	slwi r0, r0, 2
/* 8030AC44  7C 03 04 2E */	lfsx f0, r3, r0
/* 8030AC48  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8030AC4C  48 00 00 24 */	b lbl_8030AC70
lbl_8030AC50:
/* 8030AC50  FC 20 F8 90 */	fmr f1, f31
/* 8030AC54  7F A3 EB 78 */	mr r3, r29
/* 8030AC58  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 8030AC5C  A0 1D 00 02 */	lhz r0, 2(r29)
/* 8030AC60  54 00 10 3A */	slwi r0, r0, 2
/* 8030AC64  7C 84 02 14 */	add r4, r4, r0
/* 8030AC68  48 00 1D 49 */	bl func_8030C9B0
/* 8030AC6C  D0 3C 00 08 */	stfs f1, 8(r28)
lbl_8030AC70:
/* 8030AC70  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8030AC74  2C 00 00 01 */	cmpwi r0, 1
/* 8030AC78  41 82 00 20 */	beq lbl_8030AC98
/* 8030AC7C  40 80 00 3C */	bge lbl_8030ACB8
/* 8030AC80  2C 00 00 00 */	cmpwi r0, 0
/* 8030AC84  40 80 00 08 */	bge lbl_8030AC8C
/* 8030AC88  48 00 00 30 */	b lbl_8030ACB8
lbl_8030AC8C:
/* 8030AC8C  38 00 00 00 */	li r0, 0
/* 8030AC90  B0 1C 00 0C */	sth r0, 0xc(r28)
/* 8030AC94  48 00 00 58 */	b lbl_8030ACEC
lbl_8030AC98:
/* 8030AC98  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8030AC9C  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8030ACA0  54 00 08 3C */	slwi r0, r0, 1
/* 8030ACA4  7C 63 02 AE */	lhax r3, r3, r0
/* 8030ACA8  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8030ACAC  7C 60 00 30 */	slw r0, r3, r0
/* 8030ACB0  B0 1C 00 0C */	sth r0, 0xc(r28)
/* 8030ACB4  48 00 00 38 */	b lbl_8030ACEC
lbl_8030ACB8:
/* 8030ACB8  FC 20 F8 90 */	fmr f1, f31
/* 8030ACBC  38 7F 00 06 */	addi r3, r31, 6
/* 8030ACC0  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8030ACC4  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8030ACC8  54 00 08 3C */	slwi r0, r0, 1
/* 8030ACCC  7C 84 02 14 */	add r4, r4, r0
/* 8030ACD0  48 00 1A AD */	bl func_8030C77C
/* 8030ACD4  FC 00 08 1E */	fctiwz f0, f1
/* 8030ACD8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8030ACDC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8030ACE0  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8030ACE4  7C 60 00 30 */	slw r0, r3, r0
/* 8030ACE8  B0 1C 00 0C */	sth r0, 0xc(r28)
lbl_8030ACEC:
/* 8030ACEC  A0 1E 00 06 */	lhz r0, 6(r30)
/* 8030ACF0  2C 00 00 01 */	cmpwi r0, 1
/* 8030ACF4  41 82 00 20 */	beq lbl_8030AD14
/* 8030ACF8  40 80 00 3C */	bge lbl_8030AD34
/* 8030ACFC  2C 00 00 00 */	cmpwi r0, 0
/* 8030AD00  40 80 00 08 */	bge lbl_8030AD08
/* 8030AD04  48 00 00 30 */	b lbl_8030AD34
lbl_8030AD08:
/* 8030AD08  38 00 00 00 */	li r0, 0
/* 8030AD0C  B0 1C 00 0E */	sth r0, 0xe(r28)
/* 8030AD10  48 00 00 58 */	b lbl_8030AD68
lbl_8030AD14:
/* 8030AD14  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8030AD18  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8030AD1C  54 00 08 3C */	slwi r0, r0, 1
/* 8030AD20  7C 63 02 AE */	lhax r3, r3, r0
/* 8030AD24  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8030AD28  7C 60 00 30 */	slw r0, r3, r0
/* 8030AD2C  B0 1C 00 0E */	sth r0, 0xe(r28)
/* 8030AD30  48 00 00 38 */	b lbl_8030AD68
lbl_8030AD34:
/* 8030AD34  FC 20 F8 90 */	fmr f1, f31
/* 8030AD38  38 7E 00 06 */	addi r3, r30, 6
/* 8030AD3C  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8030AD40  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8030AD44  54 00 08 3C */	slwi r0, r0, 1
/* 8030AD48  7C 84 02 14 */	add r4, r4, r0
/* 8030AD4C  48 00 1A 31 */	bl func_8030C77C
/* 8030AD50  FC 00 08 1E */	fctiwz f0, f1
/* 8030AD54  D8 01 00 08 */	stfd f0, 8(r1)
/* 8030AD58  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8030AD5C  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8030AD60  7C 60 00 30 */	slw r0, r3, r0
/* 8030AD64  B0 1C 00 0E */	sth r0, 0xe(r28)
lbl_8030AD68:
/* 8030AD68  A0 1D 00 06 */	lhz r0, 6(r29)
/* 8030AD6C  2C 00 00 01 */	cmpwi r0, 1
/* 8030AD70  41 82 00 20 */	beq lbl_8030AD90
/* 8030AD74  40 80 00 3C */	bge lbl_8030ADB0
/* 8030AD78  2C 00 00 00 */	cmpwi r0, 0
/* 8030AD7C  40 80 00 08 */	bge lbl_8030AD84
/* 8030AD80  48 00 00 30 */	b lbl_8030ADB0
lbl_8030AD84:
/* 8030AD84  38 00 00 00 */	li r0, 0
/* 8030AD88  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 8030AD8C  48 00 00 58 */	b lbl_8030ADE4
lbl_8030AD90:
/* 8030AD90  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8030AD94  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8030AD98  54 00 08 3C */	slwi r0, r0, 1
/* 8030AD9C  7C 63 02 AE */	lhax r3, r3, r0
/* 8030ADA0  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8030ADA4  7C 60 00 30 */	slw r0, r3, r0
/* 8030ADA8  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 8030ADAC  48 00 00 38 */	b lbl_8030ADE4
lbl_8030ADB0:
/* 8030ADB0  FC 20 F8 90 */	fmr f1, f31
/* 8030ADB4  38 7D 00 06 */	addi r3, r29, 6
/* 8030ADB8  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8030ADBC  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8030ADC0  54 00 08 3C */	slwi r0, r0, 1
/* 8030ADC4  7C 84 02 14 */	add r4, r4, r0
/* 8030ADC8  48 00 19 B5 */	bl func_8030C77C
/* 8030ADCC  FC 00 08 1E */	fctiwz f0, f1
/* 8030ADD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8030ADD4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8030ADD8  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 8030ADDC  7C 60 00 30 */	slw r0, r3, r0
/* 8030ADE0  B0 1C 00 10 */	sth r0, 0x10(r28)
lbl_8030ADE4:
/* 8030ADE4  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 8030ADE8  2C 00 00 01 */	cmpwi r0, 1
/* 8030ADEC  41 82 00 20 */	beq lbl_8030AE0C
/* 8030ADF0  40 80 00 34 */	bge lbl_8030AE24
/* 8030ADF4  2C 00 00 00 */	cmpwi r0, 0
/* 8030ADF8  40 80 00 08 */	bge lbl_8030AE00
/* 8030ADFC  48 00 00 28 */	b lbl_8030AE24
lbl_8030AE00:
/* 8030AE00  C0 02 C9 00 */	lfs f0, lit_1573(r2)
/* 8030AE04  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 8030AE08  48 00 00 3C */	b lbl_8030AE44
lbl_8030AE0C:
/* 8030AE0C  80 7B 00 18 */	lwz r3, 0x18(r27)
/* 8030AE10  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8030AE14  54 00 10 3A */	slwi r0, r0, 2
/* 8030AE18  7C 03 04 2E */	lfsx f0, r3, r0
/* 8030AE1C  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 8030AE20  48 00 00 24 */	b lbl_8030AE44
lbl_8030AE24:
/* 8030AE24  FC 20 F8 90 */	fmr f1, f31
/* 8030AE28  38 7F 00 0C */	addi r3, r31, 0xc
/* 8030AE2C  80 9B 00 18 */	lwz r4, 0x18(r27)
/* 8030AE30  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8030AE34  54 00 10 3A */	slwi r0, r0, 2
/* 8030AE38  7C 84 02 14 */	add r4, r4, r0
/* 8030AE3C  48 00 1B 75 */	bl func_8030C9B0
/* 8030AE40  D0 3C 00 14 */	stfs f1, 0x14(r28)
lbl_8030AE44:
/* 8030AE44  A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 8030AE48  2C 00 00 01 */	cmpwi r0, 1
/* 8030AE4C  41 82 00 20 */	beq lbl_8030AE6C
/* 8030AE50  40 80 00 34 */	bge lbl_8030AE84
/* 8030AE54  2C 00 00 00 */	cmpwi r0, 0
/* 8030AE58  40 80 00 08 */	bge lbl_8030AE60
/* 8030AE5C  48 00 00 28 */	b lbl_8030AE84
lbl_8030AE60:
/* 8030AE60  C0 02 C9 00 */	lfs f0, lit_1573(r2)
/* 8030AE64  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 8030AE68  48 00 00 3C */	b lbl_8030AEA4
lbl_8030AE6C:
/* 8030AE6C  80 7B 00 18 */	lwz r3, 0x18(r27)
/* 8030AE70  A0 1E 00 0E */	lhz r0, 0xe(r30)
/* 8030AE74  54 00 10 3A */	slwi r0, r0, 2
/* 8030AE78  7C 03 04 2E */	lfsx f0, r3, r0
/* 8030AE7C  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 8030AE80  48 00 00 24 */	b lbl_8030AEA4
lbl_8030AE84:
/* 8030AE84  FC 20 F8 90 */	fmr f1, f31
/* 8030AE88  38 7E 00 0C */	addi r3, r30, 0xc
/* 8030AE8C  80 9B 00 18 */	lwz r4, 0x18(r27)
/* 8030AE90  A0 1E 00 0E */	lhz r0, 0xe(r30)
/* 8030AE94  54 00 10 3A */	slwi r0, r0, 2
/* 8030AE98  7C 84 02 14 */	add r4, r4, r0
/* 8030AE9C  48 00 1B 15 */	bl func_8030C9B0
/* 8030AEA0  D0 3C 00 18 */	stfs f1, 0x18(r28)
lbl_8030AEA4:
/* 8030AEA4  A0 1D 00 0C */	lhz r0, 0xc(r29)
/* 8030AEA8  2C 00 00 01 */	cmpwi r0, 1
/* 8030AEAC  41 82 00 20 */	beq lbl_8030AECC
/* 8030AEB0  40 80 00 34 */	bge lbl_8030AEE4
/* 8030AEB4  2C 00 00 00 */	cmpwi r0, 0
/* 8030AEB8  40 80 00 08 */	bge lbl_8030AEC0
/* 8030AEBC  48 00 00 28 */	b lbl_8030AEE4
lbl_8030AEC0:
/* 8030AEC0  C0 02 C9 00 */	lfs f0, lit_1573(r2)
/* 8030AEC4  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 8030AEC8  48 00 00 3C */	b lbl_8030AF04
lbl_8030AECC:
/* 8030AECC  80 7B 00 18 */	lwz r3, 0x18(r27)
/* 8030AED0  A0 1D 00 0E */	lhz r0, 0xe(r29)
/* 8030AED4  54 00 10 3A */	slwi r0, r0, 2
/* 8030AED8  7C 03 04 2E */	lfsx f0, r3, r0
/* 8030AEDC  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 8030AEE0  48 00 00 24 */	b lbl_8030AF04
lbl_8030AEE4:
/* 8030AEE4  FC 20 F8 90 */	fmr f1, f31
/* 8030AEE8  38 7D 00 0C */	addi r3, r29, 0xc
/* 8030AEEC  80 9B 00 18 */	lwz r4, 0x18(r27)
/* 8030AEF0  A0 1D 00 0E */	lhz r0, 0xe(r29)
/* 8030AEF4  54 00 10 3A */	slwi r0, r0, 2
/* 8030AEF8  7C 84 02 14 */	add r4, r4, r0
/* 8030AEFC  48 00 1A B5 */	bl func_8030C9B0
/* 8030AF00  D0 3C 00 1C */	stfs f1, 0x1c(r28)
lbl_8030AF04:
/* 8030AF04  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8030AF08  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8030AF0C  39 61 00 30 */	addi r11, r1, 0x30
/* 8030AF10  48 05 73 11 */	bl _restgpr_27
/* 8030AF14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8030AF18  7C 08 03 A6 */	mtlr r0
/* 8030AF1C  38 21 00 40 */	addi r1, r1, 0x40
/* 8030AF20  4E 80 00 20 */	blr 
