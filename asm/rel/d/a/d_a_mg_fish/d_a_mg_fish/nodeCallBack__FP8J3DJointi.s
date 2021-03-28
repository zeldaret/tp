lbl_8052A9F0:
/* 8052A9F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052A9F4  7C 08 02 A6 */	mflr r0
/* 8052A9F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052A9FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8052AA00  4B E3 77 D8 */	b _savegpr_28
/* 8052AA04  2C 04 00 00 */	cmpwi r4, 0
/* 8052AA08  40 82 03 98 */	bne lbl_8052ADA0
/* 8052AA0C  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8052AA10  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8052AA14  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8052AA18  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8052AA1C  83 BE 00 14 */	lwz r29, 0x14(r30)
/* 8052AA20  28 1D 00 00 */	cmplwi r29, 0
/* 8052AA24  41 82 03 7C */	beq lbl_8052ADA0
/* 8052AA28  80 1D 07 2C */	lwz r0, 0x72c(r29)
/* 8052AA2C  7C 1F 00 00 */	cmpw r31, r0
/* 8052AA30  41 81 00 C4 */	bgt lbl_8052AAF4
/* 8052AA34  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 8052AA38  7C 7D 02 14 */	add r3, r29, r0
/* 8052AA3C  C0 23 06 64 */	lfs f1, 0x664(r3)
/* 8052AA40  C0 43 06 68 */	lfs f2, 0x668(r3)
/* 8052AA44  C0 63 06 6C */	lfs f3, 0x66c(r3)
/* 8052AA48  38 60 00 00 */	li r3, 0
/* 8052AA4C  4B D4 64 10 */	b MtxTrans__FfffUc
/* 8052AA50  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AA54  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AA58  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AA5C  1F 9F 00 06 */	mulli r28, r31, 6
/* 8052AA60  7C 9D E2 14 */	add r4, r29, r28
/* 8052AA64  A8 84 06 DE */	lha r4, 0x6de(r4)
/* 8052AA68  4B AE 19 CC */	b mDoMtx_YrotM__FPA4_fs
/* 8052AA6C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AA70  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AA74  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AA78  7C 9D E2 14 */	add r4, r29, r28
/* 8052AA7C  A8 84 06 DC */	lha r4, 0x6dc(r4)
/* 8052AA80  4B AE 19 1C */	b mDoMtx_XrotM__FPA4_fs
/* 8052AA84  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AA88  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AA8C  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AA90  A8 BD 04 E8 */	lha r5, 0x4e8(r29)
/* 8052AA94  7C 9D E2 14 */	add r4, r29, r28
/* 8052AA98  A8 04 06 E0 */	lha r0, 0x6e0(r4)
/* 8052AA9C  7C 05 00 50 */	subf r0, r5, r0
/* 8052AAA0  7C 04 07 34 */	extsh r4, r0
/* 8052AAA4  4B AE 1A 28 */	b mDoMtx_ZrotM__FPA4_fs
/* 8052AAA8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AAAC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AAB0  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AAB4  38 80 C0 00 */	li r4, -16384
/* 8052AAB8  4B AE 19 7C */	b mDoMtx_YrotM__FPA4_fs
/* 8052AABC  C0 3D 05 BC */	lfs f1, 0x5bc(r29)
/* 8052AAC0  FC 40 08 90 */	fmr f2, f1
/* 8052AAC4  FC 60 08 90 */	fmr f3, f1
/* 8052AAC8  38 60 00 01 */	li r3, 1
/* 8052AACC  4B D4 63 D8 */	b MtxScale__FfffUc
/* 8052AAD0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AAD4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AAD8  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AADC  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8052AAE0  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8052AAE4  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 8052AAE8  7C 84 02 14 */	add r4, r4, r0
/* 8052AAEC  4B E1 B9 C4 */	b PSMTXCopy
/* 8052AAF0  48 00 02 B0 */	b lbl_8052ADA0
lbl_8052AAF4:
/* 8052AAF4  88 1D 06 35 */	lbz r0, 0x635(r29)
/* 8052AAF8  28 00 00 03 */	cmplwi r0, 3
/* 8052AAFC  40 82 00 68 */	bne lbl_8052AB64
/* 8052AB00  2C 1F 00 09 */	cmpwi r31, 9
/* 8052AB04  41 80 00 60 */	blt lbl_8052AB64
/* 8052AB08  2C 1F 00 0C */	cmpwi r31, 0xc
/* 8052AB0C  41 81 00 58 */	bgt lbl_8052AB64
/* 8052AB10  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8052AB14  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8052AB18  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 8052AB1C  7C 60 E2 14 */	add r3, r0, r28
/* 8052AB20  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8052AB24  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8052AB28  80 84 00 00 */	lwz r4, 0(r4)
/* 8052AB2C  4B E1 B9 84 */	b PSMTXCopy
/* 8052AB30  3C 60 80 53 */	lis r3, lit_3715@ha
/* 8052AB34  C0 23 61 80 */	lfs f1, lit_3715@l(r3)
/* 8052AB38  FC 40 08 90 */	fmr f2, f1
/* 8052AB3C  FC 60 08 90 */	fmr f3, f1
/* 8052AB40  38 60 00 01 */	li r3, 1
/* 8052AB44  4B D4 63 60 */	b MtxScale__FfffUc
/* 8052AB48  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AB4C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AB50  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AB54  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8052AB58  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8052AB5C  7C 80 E2 14 */	add r4, r0, r28
/* 8052AB60  4B E1 B9 50 */	b PSMTXCopy
lbl_8052AB64:
/* 8052AB64  88 1D 06 35 */	lbz r0, 0x635(r29)
/* 8052AB68  28 00 00 01 */	cmplwi r0, 1
/* 8052AB6C  41 82 00 14 */	beq lbl_8052AB80
/* 8052AB70  28 00 00 02 */	cmplwi r0, 2
/* 8052AB74  41 82 00 0C */	beq lbl_8052AB80
/* 8052AB78  28 00 00 04 */	cmplwi r0, 4
/* 8052AB7C  40 82 00 88 */	bne lbl_8052AC04
lbl_8052AB80:
/* 8052AB80  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8052AB84  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8052AB88  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 8052AB8C  7C 60 E2 14 */	add r3, r0, r28
/* 8052AB90  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8052AB94  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8052AB98  80 84 00 00 */	lwz r4, 0(r4)
/* 8052AB9C  4B E1 B9 14 */	b PSMTXCopy
/* 8052ABA0  2C 1F 00 07 */	cmpwi r31, 7
/* 8052ABA4  41 82 00 0C */	beq lbl_8052ABB0
/* 8052ABA8  2C 1F 00 08 */	cmpwi r31, 8
/* 8052ABAC  40 82 00 20 */	bne lbl_8052ABCC
lbl_8052ABB0:
/* 8052ABB0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052ABB4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052ABB8  80 63 00 00 */	lwz r3, 0(r3)
/* 8052ABBC  57 E0 08 3C */	slwi r0, r31, 1
/* 8052ABC0  7C 9D 02 14 */	add r4, r29, r0
/* 8052ABC4  A8 84 07 2A */	lha r4, 0x72a(r4)
/* 8052ABC8  4B AE 18 6C */	b mDoMtx_YrotM__FPA4_fs
lbl_8052ABCC:
/* 8052ABCC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052ABD0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052ABD4  80 63 00 00 */	lwz r3, 0(r3)
/* 8052ABD8  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8052ABDC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8052ABE0  7C 80 E2 14 */	add r4, r0, r28
/* 8052ABE4  4B E1 B8 CC */	b PSMTXCopy
/* 8052ABE8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052ABEC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052ABF0  80 63 00 00 */	lwz r3, 0(r3)
/* 8052ABF4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8052ABF8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8052ABFC  4B E1 B8 B4 */	b PSMTXCopy
/* 8052AC00  48 00 01 1C */	b lbl_8052AD1C
lbl_8052AC04:
/* 8052AC04  28 00 00 00 */	cmplwi r0, 0
/* 8052AC08  40 82 00 88 */	bne lbl_8052AC90
/* 8052AC0C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8052AC10  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8052AC14  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 8052AC18  7C 60 E2 14 */	add r3, r0, r28
/* 8052AC1C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8052AC20  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8052AC24  80 84 00 00 */	lwz r4, 0(r4)
/* 8052AC28  4B E1 B8 88 */	b PSMTXCopy
/* 8052AC2C  2C 1F 00 05 */	cmpwi r31, 5
/* 8052AC30  41 82 00 0C */	beq lbl_8052AC3C
/* 8052AC34  2C 1F 00 06 */	cmpwi r31, 6
/* 8052AC38  40 82 00 20 */	bne lbl_8052AC58
lbl_8052AC3C:
/* 8052AC3C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AC40  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AC44  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AC48  57 E0 08 3C */	slwi r0, r31, 1
/* 8052AC4C  7C 9D 02 14 */	add r4, r29, r0
/* 8052AC50  A8 84 07 2E */	lha r4, 0x72e(r4)
/* 8052AC54  4B AE 17 E0 */	b mDoMtx_YrotM__FPA4_fs
lbl_8052AC58:
/* 8052AC58  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AC5C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AC60  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AC64  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8052AC68  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8052AC6C  7C 80 E2 14 */	add r4, r0, r28
/* 8052AC70  4B E1 B8 40 */	b PSMTXCopy
/* 8052AC74  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AC78  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AC7C  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AC80  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8052AC84  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8052AC88  4B E1 B8 28 */	b PSMTXCopy
/* 8052AC8C  48 00 00 90 */	b lbl_8052AD1C
lbl_8052AC90:
/* 8052AC90  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8052AC94  28 00 00 05 */	cmplwi r0, 5
/* 8052AC98  40 82 00 84 */	bne lbl_8052AD1C
/* 8052AC9C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8052ACA0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8052ACA4  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 8052ACA8  7C 60 E2 14 */	add r3, r0, r28
/* 8052ACAC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8052ACB0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8052ACB4  80 84 00 00 */	lwz r4, 0(r4)
/* 8052ACB8  4B E1 B7 F8 */	b PSMTXCopy
/* 8052ACBC  2C 1F 00 05 */	cmpwi r31, 5
/* 8052ACC0  41 82 00 0C */	beq lbl_8052ACCC
/* 8052ACC4  2C 1F 00 06 */	cmpwi r31, 6
/* 8052ACC8  40 82 00 20 */	bne lbl_8052ACE8
lbl_8052ACCC:
/* 8052ACCC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052ACD0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052ACD4  80 63 00 00 */	lwz r3, 0(r3)
/* 8052ACD8  57 E0 08 3C */	slwi r0, r31, 1
/* 8052ACDC  7C 9D 02 14 */	add r4, r29, r0
/* 8052ACE0  A8 84 07 2E */	lha r4, 0x72e(r4)
/* 8052ACE4  4B AE 17 50 */	b mDoMtx_YrotM__FPA4_fs
lbl_8052ACE8:
/* 8052ACE8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052ACEC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052ACF0  80 63 00 00 */	lwz r3, 0(r3)
/* 8052ACF4  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8052ACF8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8052ACFC  7C 80 E2 14 */	add r4, r0, r28
/* 8052AD00  4B E1 B7 B0 */	b PSMTXCopy
/* 8052AD04  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AD08  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AD0C  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AD10  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8052AD14  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8052AD18  4B E1 B7 98 */	b PSMTXCopy
lbl_8052AD1C:
/* 8052AD1C  88 1D 06 35 */	lbz r0, 0x635(r29)
/* 8052AD20  28 00 00 04 */	cmplwi r0, 4
/* 8052AD24  41 82 00 0C */	beq lbl_8052AD30
/* 8052AD28  28 00 00 02 */	cmplwi r0, 2
/* 8052AD2C  40 82 00 74 */	bne lbl_8052ADA0
lbl_8052AD30:
/* 8052AD30  2C 1F 00 0A */	cmpwi r31, 0xa
/* 8052AD34  40 82 00 6C */	bne lbl_8052ADA0
/* 8052AD38  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8052AD3C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8052AD40  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 8052AD44  7C 60 E2 14 */	add r3, r0, r28
/* 8052AD48  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8052AD4C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8052AD50  80 84 00 00 */	lwz r4, 0(r4)
/* 8052AD54  4B E1 B7 5C */	b PSMTXCopy
/* 8052AD58  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AD5C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AD60  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AD64  A8 9D 06 44 */	lha r4, 0x644(r29)
/* 8052AD68  4B AE 17 64 */	b mDoMtx_ZrotM__FPA4_fs
/* 8052AD6C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AD70  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AD74  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AD78  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8052AD7C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8052AD80  7C 80 E2 14 */	add r4, r0, r28
/* 8052AD84  4B E1 B7 2C */	b PSMTXCopy
/* 8052AD88  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8052AD8C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8052AD90  80 63 00 00 */	lwz r3, 0(r3)
/* 8052AD94  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8052AD98  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8052AD9C  4B E1 B7 14 */	b PSMTXCopy
lbl_8052ADA0:
/* 8052ADA0  38 60 00 01 */	li r3, 1
/* 8052ADA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8052ADA8  4B E3 74 7C */	b _restgpr_28
/* 8052ADAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052ADB0  7C 08 03 A6 */	mtlr r0
/* 8052ADB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8052ADB8  4E 80 00 20 */	blr 
