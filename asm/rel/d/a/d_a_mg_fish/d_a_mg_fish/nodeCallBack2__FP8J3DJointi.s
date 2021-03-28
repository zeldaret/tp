lbl_8052ADBC:
/* 8052ADBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052ADC0  7C 08 02 A6 */	mflr r0
/* 8052ADC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052ADC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8052ADCC  4B E3 74 0C */	b _savegpr_28
/* 8052ADD0  2C 04 00 00 */	cmpwi r4, 0
/* 8052ADD4  40 82 01 B0 */	bne lbl_8052AF84
/* 8052ADD8  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8052ADDC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8052ADE0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8052ADE4  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8052ADE8  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 8052ADEC  28 1C 00 00 */	cmplwi r28, 0
/* 8052ADF0  41 82 01 94 */	beq lbl_8052AF84
/* 8052ADF4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8052ADF8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8052ADFC  1F BF 00 30 */	mulli r29, r31, 0x30
/* 8052AE00  7C 60 EA 14 */	add r3, r0, r29
/* 8052AE04  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8052AE08  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8052AE0C  80 84 00 00 */	lwz r4, 0(r4)
/* 8052AE10  4B E1 B6 A0 */	b PSMTXCopy
/* 8052AE14  88 1C 06 35 */	lbz r0, 0x635(r28)
/* 8052AE18  28 00 00 03 */	cmplwi r0, 3
/* 8052AE1C  40 82 00 48 */	bne lbl_8052AE64
/* 8052AE20  2C 1F 00 09 */	cmpwi r31, 9
/* 8052AE24  41 80 00 40 */	blt lbl_8052AE64
/* 8052AE28  2C 1F 00 0C */	cmpwi r31, 0xc
/* 8052AE2C  41 81 00 38 */	bgt lbl_8052AE64
/* 8052AE30  3C 60 80 53 */	lis r3, lit_3715@ha
/* 8052AE34  C0 23 61 80 */	lfs f1, lit_3715@l(r3)
/* 8052AE38  FC 40 08 90 */	fmr f2, f1
/* 8052AE3C  FC 60 08 90 */	fmr f3, f1
/* 8052AE40  38 60 00 01 */	li r3, 1
/* 8052AE44  4B D4 60 60 */	b MtxScale__FfffUc
/* 8052AE48  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AE4C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AE50  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AE54  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8052AE58  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8052AE5C  7C 80 EA 14 */	add r4, r0, r29
/* 8052AE60  4B E1 B6 50 */	b PSMTXCopy
lbl_8052AE64:
/* 8052AE64  2C 1F 00 01 */	cmpwi r31, 1
/* 8052AE68  41 80 00 2C */	blt lbl_8052AE94
/* 8052AE6C  80 1C 07 2C */	lwz r0, 0x72c(r28)
/* 8052AE70  7C 1F 00 00 */	cmpw r31, r0
/* 8052AE74  41 81 00 20 */	bgt lbl_8052AE94
/* 8052AE78  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AE7C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AE80  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AE84  57 E0 08 3C */	slwi r0, r31, 1
/* 8052AE88  7C 9C 02 14 */	add r4, r28, r0
/* 8052AE8C  A8 84 07 16 */	lha r4, 0x716(r4)
/* 8052AE90  4B AE 15 A4 */	b mDoMtx_YrotM__FPA4_fs
lbl_8052AE94:
/* 8052AE94  88 1C 06 35 */	lbz r0, 0x635(r28)
/* 8052AE98  28 00 00 01 */	cmplwi r0, 1
/* 8052AE9C  41 82 00 14 */	beq lbl_8052AEB0
/* 8052AEA0  28 00 00 02 */	cmplwi r0, 2
/* 8052AEA4  41 82 00 0C */	beq lbl_8052AEB0
/* 8052AEA8  28 00 00 04 */	cmplwi r0, 4
/* 8052AEAC  40 82 00 34 */	bne lbl_8052AEE0
lbl_8052AEB0:
/* 8052AEB0  2C 1F 00 07 */	cmpwi r31, 7
/* 8052AEB4  41 82 00 0C */	beq lbl_8052AEC0
/* 8052AEB8  2C 1F 00 08 */	cmpwi r31, 8
/* 8052AEBC  40 82 00 94 */	bne lbl_8052AF50
lbl_8052AEC0:
/* 8052AEC0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AEC4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AEC8  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AECC  57 E0 08 3C */	slwi r0, r31, 1
/* 8052AED0  7C 9C 02 14 */	add r4, r28, r0
/* 8052AED4  A8 84 07 2A */	lha r4, 0x72a(r4)
/* 8052AED8  4B AE 15 5C */	b mDoMtx_YrotM__FPA4_fs
/* 8052AEDC  48 00 00 74 */	b lbl_8052AF50
lbl_8052AEE0:
/* 8052AEE0  28 00 00 00 */	cmplwi r0, 0
/* 8052AEE4  40 82 00 34 */	bne lbl_8052AF18
/* 8052AEE8  2C 1F 00 05 */	cmpwi r31, 5
/* 8052AEEC  41 82 00 0C */	beq lbl_8052AEF8
/* 8052AEF0  2C 1F 00 06 */	cmpwi r31, 6
/* 8052AEF4  40 82 00 5C */	bne lbl_8052AF50
lbl_8052AEF8:
/* 8052AEF8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AEFC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AF00  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AF04  57 E0 08 3C */	slwi r0, r31, 1
/* 8052AF08  7C 9C 02 14 */	add r4, r28, r0
/* 8052AF0C  A8 84 07 2E */	lha r4, 0x72e(r4)
/* 8052AF10  4B AE 15 24 */	b mDoMtx_YrotM__FPA4_fs
/* 8052AF14  48 00 00 3C */	b lbl_8052AF50
lbl_8052AF18:
/* 8052AF18  88 1C 06 34 */	lbz r0, 0x634(r28)
/* 8052AF1C  28 00 00 05 */	cmplwi r0, 5
/* 8052AF20  40 82 00 30 */	bne lbl_8052AF50
/* 8052AF24  2C 1F 00 05 */	cmpwi r31, 5
/* 8052AF28  41 82 00 0C */	beq lbl_8052AF34
/* 8052AF2C  2C 1F 00 06 */	cmpwi r31, 6
/* 8052AF30  40 82 00 20 */	bne lbl_8052AF50
lbl_8052AF34:
/* 8052AF34  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AF38  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AF3C  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AF40  57 E0 08 3C */	slwi r0, r31, 1
/* 8052AF44  7C 9C 02 14 */	add r4, r28, r0
/* 8052AF48  A8 84 07 2E */	lha r4, 0x72e(r4)
/* 8052AF4C  4B AE 14 E8 */	b mDoMtx_YrotM__FPA4_fs
lbl_8052AF50:
/* 8052AF50  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AF54  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AF58  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AF5C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8052AF60  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8052AF64  7C 80 EA 14 */	add r4, r0, r29
/* 8052AF68  4B E1 B5 48 */	b PSMTXCopy
/* 8052AF6C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AF70  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AF74  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AF78  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8052AF7C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8052AF80  4B E1 B5 30 */	b PSMTXCopy
lbl_8052AF84:
/* 8052AF84  38 60 00 01 */	li r3, 1
/* 8052AF88  39 61 00 20 */	addi r11, r1, 0x20
/* 8052AF8C  4B E3 72 98 */	b _restgpr_28
/* 8052AF90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052AF94  7C 08 03 A6 */	mtlr r0
/* 8052AF98  38 21 00 20 */	addi r1, r1, 0x20
/* 8052AF9C  4E 80 00 20 */	blr 
