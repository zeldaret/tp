lbl_8083ACEC:
/* 8083ACEC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8083ACF0  7C 08 02 A6 */	mflr r0
/* 8083ACF4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8083ACF8  39 61 00 40 */	addi r11, r1, 0x40
/* 8083ACFC  4B B2 74 E0 */	b _savegpr_29
/* 8083AD00  7C 7D 1B 78 */	mr r29, r3
/* 8083AD04  7C 9E 23 78 */	mr r30, r4
/* 8083AD08  3C 60 80 84 */	lis r3, lit_3894@ha
/* 8083AD0C  3B E3 54 AC */	addi r31, r3, lit_3894@l
/* 8083AD10  38 61 00 14 */	addi r3, r1, 0x14
/* 8083AD14  7C A4 2B 78 */	mr r4, r5
/* 8083AD18  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8083AD1C  4B A2 BE 18 */	b __mi__4cXyzCFRC3Vec
/* 8083AD20  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8083AD24  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8083AD28  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8083AD2C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8083AD30  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8083AD34  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8083AD38  80 1D 17 28 */	lwz r0, 0x1728(r29)
/* 8083AD3C  2C 00 00 00 */	cmpwi r0, 0
/* 8083AD40  41 82 00 68 */	beq lbl_8083ADA8
/* 8083AD44  80 1E 00 00 */	lwz r0, 0(r30)
/* 8083AD48  28 00 00 04 */	cmplwi r0, 4
/* 8083AD4C  41 82 00 14 */	beq lbl_8083AD60
/* 8083AD50  28 00 00 0B */	cmplwi r0, 0xb
/* 8083AD54  41 82 00 0C */	beq lbl_8083AD60
/* 8083AD58  28 00 00 03 */	cmplwi r0, 3
/* 8083AD5C  40 82 00 4C */	bne lbl_8083ADA8
lbl_8083AD60:
/* 8083AD60  38 61 00 20 */	addi r3, r1, 0x20
/* 8083AD64  4B A2 C3 C4 */	b atan2sX_Z__4cXyzCFv
/* 8083AD68  B0 7D 16 FC */	sth r3, 0x16fc(r29)
/* 8083AD6C  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8083AD70  A8 1D 16 FC */	lha r0, 0x16fc(r29)
/* 8083AD74  7C 03 00 50 */	subf r0, r3, r0
/* 8083AD78  7C 03 07 34 */	extsh r3, r0
/* 8083AD7C  4B B2 A3 54 */	b abs
/* 8083AD80  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8083AD84  40 81 01 24 */	ble lbl_8083AEA8
/* 8083AD88  80 9D 17 2C */	lwz r4, 0x172c(r29)
/* 8083AD8C  2C 04 FF FF */	cmpwi r4, -1
/* 8083AD90  41 82 01 18 */	beq lbl_8083AEA8
/* 8083AD94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8083AD98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8083AD9C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8083ADA0  4B 80 D3 DC */	b cutEnd__16dEvent_manager_cFi
/* 8083ADA4  48 00 01 04 */	b lbl_8083AEA8
lbl_8083ADA8:
/* 8083ADA8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8083ADAC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8083ADB0  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083ADB4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8083ADB8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8083ADBC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8083ADC0  38 61 00 08 */	addi r3, r1, 8
/* 8083ADC4  4B B0 C3 74 */	b PSVECSquareMag
/* 8083ADC8  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 8083ADCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083ADD0  41 80 00 2C */	blt lbl_8083ADFC
/* 8083ADD4  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 8083ADD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083ADDC  40 80 00 38 */	bge lbl_8083AE14
/* 8083ADE0  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8083ADE4  FC 00 02 10 */	fabs f0, f0
/* 8083ADE8  FC 40 00 18 */	frsp f2, f0
/* 8083ADEC  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 8083ADF0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8083ADF4  4C 40 13 82 */	cror 2, 0, 2
/* 8083ADF8  40 82 00 1C */	bne lbl_8083AE14
lbl_8083ADFC:
/* 8083ADFC  38 00 00 01 */	li r0, 1
/* 8083AE00  90 1E 00 00 */	stw r0, 0(r30)
/* 8083AE04  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083AE08  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8083AE0C  D0 1D 17 58 */	stfs f0, 0x1758(r29)
/* 8083AE10  48 00 00 4C */	b lbl_8083AE5C
lbl_8083AE14:
/* 8083AE14  80 1E 00 00 */	lwz r0, 0(r30)
/* 8083AE18  28 00 00 02 */	cmplwi r0, 2
/* 8083AE1C  41 82 00 0C */	beq lbl_8083AE28
/* 8083AE20  28 00 00 0A */	cmplwi r0, 0xa
/* 8083AE24  40 82 00 10 */	bne lbl_8083AE34
lbl_8083AE28:
/* 8083AE28  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 8083AE2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083AE30  41 80 00 10 */	blt lbl_8083AE40
lbl_8083AE34:
/* 8083AE34  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 8083AE38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083AE3C  40 80 00 20 */	bge lbl_8083AE5C
lbl_8083AE40:
/* 8083AE40  28 00 00 0A */	cmplwi r0, 0xa
/* 8083AE44  40 82 00 10 */	bne lbl_8083AE54
/* 8083AE48  38 00 00 0A */	li r0, 0xa
/* 8083AE4C  90 1E 00 00 */	stw r0, 0(r30)
/* 8083AE50  48 00 00 0C */	b lbl_8083AE5C
lbl_8083AE54:
/* 8083AE54  38 00 00 02 */	li r0, 2
/* 8083AE58  90 1E 00 00 */	stw r0, 0(r30)
lbl_8083AE5C:
/* 8083AE5C  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083AE60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083AE64  40 81 00 0C */	ble lbl_8083AE70
/* 8083AE68  FC 00 08 34 */	frsqrte f0, f1
/* 8083AE6C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8083AE70:
/* 8083AE70  C0 5F 01 C0 */	lfs f2, 0x1c0(r31)
/* 8083AE74  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8083AE78  EC 00 00 32 */	fmuls f0, f0, f0
/* 8083AE7C  EC 42 00 32 */	fmuls f2, f2, f0
/* 8083AE80  38 7F 00 20 */	addi r3, r31, 0x20
/* 8083AE84  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 8083AE88  EC 02 00 24 */	fdivs f0, f2, f0
/* 8083AE8C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8083AE90  40 81 00 0C */	ble lbl_8083AE9C
/* 8083AE94  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083AE98  D0 1D 17 58 */	stfs f0, 0x1758(r29)
lbl_8083AE9C:
/* 8083AE9C  38 61 00 20 */	addi r3, r1, 0x20
/* 8083AEA0  4B A2 C2 88 */	b atan2sX_Z__4cXyzCFv
/* 8083AEA4  B0 7D 16 FC */	sth r3, 0x16fc(r29)
lbl_8083AEA8:
/* 8083AEA8  39 61 00 40 */	addi r11, r1, 0x40
/* 8083AEAC  4B B2 73 7C */	b _restgpr_29
/* 8083AEB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8083AEB4  7C 08 03 A6 */	mtlr r0
/* 8083AEB8  38 21 00 40 */	addi r1, r1, 0x40
/* 8083AEBC  4E 80 00 20 */	blr 
