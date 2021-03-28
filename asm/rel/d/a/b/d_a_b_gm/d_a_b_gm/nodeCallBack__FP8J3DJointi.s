lbl_805EDAA8:
/* 805EDAA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EDAAC  7C 08 02 A6 */	mflr r0
/* 805EDAB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EDAB4  39 61 00 20 */	addi r11, r1, 0x20
/* 805EDAB8  4B D7 47 20 */	b _savegpr_28
/* 805EDABC  2C 04 00 00 */	cmpwi r4, 0
/* 805EDAC0  40 82 02 CC */	bne lbl_805EDD8C
/* 805EDAC4  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 805EDAC8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 805EDACC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 805EDAD0  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 805EDAD4  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 805EDAD8  28 1C 00 00 */	cmplwi r28, 0
/* 805EDADC  41 82 02 B0 */	beq lbl_805EDD8C
/* 805EDAE0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 805EDAE4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805EDAE8  1F BF 00 30 */	mulli r29, r31, 0x30
/* 805EDAEC  7C 60 EA 14 */	add r3, r0, r29
/* 805EDAF0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805EDAF4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805EDAF8  80 84 00 00 */	lwz r4, 0(r4)
/* 805EDAFC  4B D5 89 B4 */	b PSMTXCopy
/* 805EDB00  2C 1F 00 19 */	cmpwi r31, 0x19
/* 805EDB04  41 80 00 2C */	blt lbl_805EDB30
/* 805EDB08  2C 1F 00 1B */	cmpwi r31, 0x1b
/* 805EDB0C  41 81 00 24 */	bgt lbl_805EDB30
/* 805EDB10  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDB14  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDB18  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDB1C  57 E0 08 3C */	slwi r0, r31, 1
/* 805EDB20  7C 9C 02 14 */	add r4, r28, r0
/* 805EDB24  A8 84 1A BE */	lha r4, 0x1abe(r4)
/* 805EDB28  4B A1 E9 A4 */	b mDoMtx_ZrotM__FPA4_fs
/* 805EDB2C  48 00 02 2C */	b lbl_805EDD58
lbl_805EDB30:
/* 805EDB30  2C 1F 00 1D */	cmpwi r31, 0x1d
/* 805EDB34  41 80 00 2C */	blt lbl_805EDB60
/* 805EDB38  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 805EDB3C  41 81 00 24 */	bgt lbl_805EDB60
/* 805EDB40  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDB44  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDB48  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDB4C  57 E0 08 3C */	slwi r0, r31, 1
/* 805EDB50  7C 9C 02 14 */	add r4, r28, r0
/* 805EDB54  A8 84 1A DE */	lha r4, 0x1ade(r4)
/* 805EDB58  4B A1 E9 74 */	b mDoMtx_ZrotM__FPA4_fs
/* 805EDB5C  48 00 01 FC */	b lbl_805EDD58
lbl_805EDB60:
/* 805EDB60  2C 1F 00 21 */	cmpwi r31, 0x21
/* 805EDB64  41 80 00 2C */	blt lbl_805EDB90
/* 805EDB68  2C 1F 00 23 */	cmpwi r31, 0x23
/* 805EDB6C  41 81 00 24 */	bgt lbl_805EDB90
/* 805EDB70  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDB74  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDB78  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDB7C  57 E0 08 3C */	slwi r0, r31, 1
/* 805EDB80  7C 9C 02 14 */	add r4, r28, r0
/* 805EDB84  A8 84 1A FE */	lha r4, 0x1afe(r4)
/* 805EDB88  4B A1 E9 44 */	b mDoMtx_ZrotM__FPA4_fs
/* 805EDB8C  48 00 01 CC */	b lbl_805EDD58
lbl_805EDB90:
/* 805EDB90  2C 1F 00 25 */	cmpwi r31, 0x25
/* 805EDB94  41 80 00 2C */	blt lbl_805EDBC0
/* 805EDB98  2C 1F 00 27 */	cmpwi r31, 0x27
/* 805EDB9C  41 81 00 24 */	bgt lbl_805EDBC0
/* 805EDBA0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDBA4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDBA8  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDBAC  57 E0 08 3C */	slwi r0, r31, 1
/* 805EDBB0  7C 9C 02 14 */	add r4, r28, r0
/* 805EDBB4  A8 84 1B 1E */	lha r4, 0x1b1e(r4)
/* 805EDBB8  4B A1 E9 14 */	b mDoMtx_ZrotM__FPA4_fs
/* 805EDBBC  48 00 01 9C */	b lbl_805EDD58
lbl_805EDBC0:
/* 805EDBC0  2C 1F 00 29 */	cmpwi r31, 0x29
/* 805EDBC4  41 80 00 2C */	blt lbl_805EDBF0
/* 805EDBC8  2C 1F 00 2B */	cmpwi r31, 0x2b
/* 805EDBCC  41 81 00 24 */	bgt lbl_805EDBF0
/* 805EDBD0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDBD4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDBD8  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDBDC  57 E0 08 3C */	slwi r0, r31, 1
/* 805EDBE0  7C 9C 02 14 */	add r4, r28, r0
/* 805EDBE4  A8 84 1B 3E */	lha r4, 0x1b3e(r4)
/* 805EDBE8  4B A1 E8 E4 */	b mDoMtx_ZrotM__FPA4_fs
/* 805EDBEC  48 00 01 6C */	b lbl_805EDD58
lbl_805EDBF0:
/* 805EDBF0  2C 1F 00 2D */	cmpwi r31, 0x2d
/* 805EDBF4  41 80 00 2C */	blt lbl_805EDC20
/* 805EDBF8  2C 1F 00 2F */	cmpwi r31, 0x2f
/* 805EDBFC  41 81 00 24 */	bgt lbl_805EDC20
/* 805EDC00  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDC04  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDC08  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDC0C  57 E0 08 3C */	slwi r0, r31, 1
/* 805EDC10  7C 9C 02 14 */	add r4, r28, r0
/* 805EDC14  A8 84 1B 5E */	lha r4, 0x1b5e(r4)
/* 805EDC18  4B A1 E8 B4 */	b mDoMtx_ZrotM__FPA4_fs
/* 805EDC1C  48 00 01 3C */	b lbl_805EDD58
lbl_805EDC20:
/* 805EDC20  2C 1F 00 31 */	cmpwi r31, 0x31
/* 805EDC24  41 80 00 2C */	blt lbl_805EDC50
/* 805EDC28  2C 1F 00 33 */	cmpwi r31, 0x33
/* 805EDC2C  41 81 00 24 */	bgt lbl_805EDC50
/* 805EDC30  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDC34  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDC38  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDC3C  57 E0 08 3C */	slwi r0, r31, 1
/* 805EDC40  7C 9C 02 14 */	add r4, r28, r0
/* 805EDC44  A8 84 1B 7E */	lha r4, 0x1b7e(r4)
/* 805EDC48  4B A1 E8 84 */	b mDoMtx_ZrotM__FPA4_fs
/* 805EDC4C  48 00 01 0C */	b lbl_805EDD58
lbl_805EDC50:
/* 805EDC50  2C 1F 00 35 */	cmpwi r31, 0x35
/* 805EDC54  41 80 00 2C */	blt lbl_805EDC80
/* 805EDC58  2C 1F 00 37 */	cmpwi r31, 0x37
/* 805EDC5C  41 81 00 24 */	bgt lbl_805EDC80
/* 805EDC60  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDC64  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDC68  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDC6C  57 E0 08 3C */	slwi r0, r31, 1
/* 805EDC70  7C 9C 02 14 */	add r4, r28, r0
/* 805EDC74  A8 84 1B 9E */	lha r4, 0x1b9e(r4)
/* 805EDC78  4B A1 E8 54 */	b mDoMtx_ZrotM__FPA4_fs
/* 805EDC7C  48 00 00 DC */	b lbl_805EDD58
lbl_805EDC80:
/* 805EDC80  2C 1F 00 39 */	cmpwi r31, 0x39
/* 805EDC84  41 80 00 2C */	blt lbl_805EDCB0
/* 805EDC88  2C 1F 00 3B */	cmpwi r31, 0x3b
/* 805EDC8C  41 81 00 24 */	bgt lbl_805EDCB0
/* 805EDC90  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDC94  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDC98  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDC9C  57 E0 08 3C */	slwi r0, r31, 1
/* 805EDCA0  7C 9C 02 14 */	add r4, r28, r0
/* 805EDCA4  A8 84 1B BE */	lha r4, 0x1bbe(r4)
/* 805EDCA8  4B A1 E8 24 */	b mDoMtx_ZrotM__FPA4_fs
/* 805EDCAC  48 00 00 AC */	b lbl_805EDD58
lbl_805EDCB0:
/* 805EDCB0  2C 1F 00 3E */	cmpwi r31, 0x3e
/* 805EDCB4  41 80 00 2C */	blt lbl_805EDCE0
/* 805EDCB8  2C 1F 00 40 */	cmpwi r31, 0x40
/* 805EDCBC  41 81 00 24 */	bgt lbl_805EDCE0
/* 805EDCC0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDCC4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDCC8  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDCCC  57 E0 08 3C */	slwi r0, r31, 1
/* 805EDCD0  7C 9C 02 14 */	add r4, r28, r0
/* 805EDCD4  A8 84 1B B4 */	lha r4, 0x1bb4(r4)
/* 805EDCD8  4B A1 E7 F4 */	b mDoMtx_ZrotM__FPA4_fs
/* 805EDCDC  48 00 00 7C */	b lbl_805EDD58
lbl_805EDCE0:
/* 805EDCE0  2C 1F 00 16 */	cmpwi r31, 0x16
/* 805EDCE4  40 82 00 1C */	bne lbl_805EDD00
/* 805EDCE8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDCEC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDCF0  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDCF4  A8 9C 1A D8 */	lha r4, 0x1ad8(r28)
/* 805EDCF8  4B A1 E7 D4 */	b mDoMtx_ZrotM__FPA4_fs
/* 805EDCFC  48 00 00 5C */	b lbl_805EDD58
lbl_805EDD00:
/* 805EDD00  2C 1F 00 17 */	cmpwi r31, 0x17
/* 805EDD04  40 82 00 24 */	bne lbl_805EDD28
/* 805EDD08  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDD0C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDD10  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDD14  A8 1C 1A D8 */	lha r0, 0x1ad8(r28)
/* 805EDD18  7C 00 00 D0 */	neg r0, r0
/* 805EDD1C  7C 04 07 34 */	extsh r4, r0
/* 805EDD20  4B A1 E7 AC */	b mDoMtx_ZrotM__FPA4_fs
/* 805EDD24  48 00 00 34 */	b lbl_805EDD58
lbl_805EDD28:
/* 805EDD28  2C 1F 00 15 */	cmpwi r31, 0x15
/* 805EDD2C  40 82 00 2C */	bne lbl_805EDD58
/* 805EDD30  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDD34  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDD38  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDD3C  A8 9C 1A DA */	lha r4, 0x1ada(r28)
/* 805EDD40  4B A1 E6 F4 */	b mDoMtx_YrotM__FPA4_fs
/* 805EDD44  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDD48  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDD4C  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDD50  A8 9C 1A DC */	lha r4, 0x1adc(r28)
/* 805EDD54  4B A1 E7 78 */	b mDoMtx_ZrotM__FPA4_fs
lbl_805EDD58:
/* 805EDD58  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDD5C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDD60  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDD64  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 805EDD68  80 04 00 0C */	lwz r0, 0xc(r4)
/* 805EDD6C  7C 80 EA 14 */	add r4, r0, r29
/* 805EDD70  4B D5 87 40 */	b PSMTXCopy
/* 805EDD74  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EDD78  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EDD7C  80 63 00 00 */	lwz r3, 0(r3)
/* 805EDD80  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 805EDD84  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 805EDD88  4B D5 87 28 */	b PSMTXCopy
lbl_805EDD8C:
/* 805EDD8C  38 60 00 01 */	li r3, 1
/* 805EDD90  39 61 00 20 */	addi r11, r1, 0x20
/* 805EDD94  4B D7 44 90 */	b _restgpr_28
/* 805EDD98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EDD9C  7C 08 03 A6 */	mtlr r0
/* 805EDDA0  38 21 00 20 */	addi r1, r1, 0x20
/* 805EDDA4  4E 80 00 20 */	blr 
