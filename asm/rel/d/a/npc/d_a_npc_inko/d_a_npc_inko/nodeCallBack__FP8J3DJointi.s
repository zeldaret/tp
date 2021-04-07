lbl_80A0C998:
/* 80A0C998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A0C99C  7C 08 02 A6 */	mflr r0
/* 80A0C9A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A0C9A4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0C9A8  4B 95 58 31 */	bl _savegpr_28
/* 80A0C9AC  2C 04 00 00 */	cmpwi r4, 0
/* 80A0C9B0  40 82 01 E4 */	bne lbl_80A0CB94
/* 80A0C9B4  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80A0C9B8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80A0C9BC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80A0C9C0  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80A0C9C4  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80A0C9C8  28 1C 00 00 */	cmplwi r28, 0
/* 80A0C9CC  41 82 01 C8 */	beq lbl_80A0CB94
/* 80A0C9D0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80A0C9D4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A0C9D8  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80A0C9DC  7C 60 EA 14 */	add r3, r0, r29
/* 80A0C9E0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80A0C9E4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80A0C9E8  80 84 00 00 */	lwz r4, 0(r4)
/* 80A0C9EC  4B 93 9A C5 */	bl PSMTXCopy
/* 80A0C9F0  2C 1F 00 01 */	cmpwi r31, 1
/* 80A0C9F4  40 82 00 44 */	bne lbl_80A0CA38
/* 80A0C9F8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0C9FC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CA00  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CA04  A8 9C 05 CA */	lha r4, 0x5ca(r28)
/* 80A0CA08  4B 5F FA 2D */	bl mDoMtx_YrotM__FPA4_fs
/* 80A0CA0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CA10  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CA14  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CA18  A8 9C 05 C8 */	lha r4, 0x5c8(r28)
/* 80A0CA1C  4B 5F F9 81 */	bl mDoMtx_XrotM__FPA4_fs
/* 80A0CA20  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CA24  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CA28  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CA2C  A8 9C 05 CC */	lha r4, 0x5cc(r28)
/* 80A0CA30  4B 5F FA 9D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80A0CA34  48 00 00 98 */	b lbl_80A0CACC
lbl_80A0CA38:
/* 80A0CA38  2C 1F 00 02 */	cmpwi r31, 2
/* 80A0CA3C  40 82 00 1C */	bne lbl_80A0CA58
/* 80A0CA40  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CA44  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CA48  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CA4C  A8 9C 05 E6 */	lha r4, 0x5e6(r28)
/* 80A0CA50  4B 5F FA 7D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80A0CA54  48 00 00 78 */	b lbl_80A0CACC
lbl_80A0CA58:
/* 80A0CA58  2C 1F 00 03 */	cmpwi r31, 3
/* 80A0CA5C  40 82 00 1C */	bne lbl_80A0CA78
/* 80A0CA60  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CA64  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CA68  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CA6C  A8 9C 05 E0 */	lha r4, 0x5e0(r28)
/* 80A0CA70  4B 5F FA 5D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80A0CA74  48 00 00 58 */	b lbl_80A0CACC
lbl_80A0CA78:
/* 80A0CA78  2C 1F 00 04 */	cmpwi r31, 4
/* 80A0CA7C  40 82 00 24 */	bne lbl_80A0CAA0
/* 80A0CA80  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CA84  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CA88  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CA8C  A8 1C 05 E0 */	lha r0, 0x5e0(r28)
/* 80A0CA90  7C 00 00 D0 */	neg r0, r0
/* 80A0CA94  7C 04 07 34 */	extsh r4, r0
/* 80A0CA98  4B 5F FA 35 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80A0CA9C  48 00 00 30 */	b lbl_80A0CACC
lbl_80A0CAA0:
/* 80A0CAA0  2C 1F 00 05 */	cmpwi r31, 5
/* 80A0CAA4  41 82 00 0C */	beq lbl_80A0CAB0
/* 80A0CAA8  2C 1F 00 06 */	cmpwi r31, 6
/* 80A0CAAC  40 82 00 20 */	bne lbl_80A0CACC
lbl_80A0CAB0:
/* 80A0CAB0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CAB4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CAB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CABC  57 E0 08 3C */	slwi r0, r31, 1
/* 80A0CAC0  7C 9C 02 14 */	add r4, r28, r0
/* 80A0CAC4  A8 84 05 CA */	lha r4, 0x5ca(r4)
/* 80A0CAC8  4B 5F F8 D5 */	bl mDoMtx_XrotM__FPA4_fs
lbl_80A0CACC:
/* 80A0CACC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CAD0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CAD4  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CAD8  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80A0CADC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A0CAE0  7C 80 EA 14 */	add r4, r0, r29
/* 80A0CAE4  4B 93 99 CD */	bl PSMTXCopy
/* 80A0CAE8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CAEC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CAF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CAF4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80A0CAF8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80A0CAFC  4B 93 99 B5 */	bl PSMTXCopy
/* 80A0CB00  2C 1F 00 00 */	cmpwi r31, 0
/* 80A0CB04  40 82 00 90 */	bne lbl_80A0CB94
/* 80A0CB08  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80A0CB0C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A0CB10  7C 60 EA 14 */	add r3, r0, r29
/* 80A0CB14  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CB18  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80A0CB1C  80 84 00 00 */	lwz r4, 0(r4)
/* 80A0CB20  4B 93 99 91 */	bl PSMTXCopy
/* 80A0CB24  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CB28  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CB2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CB30  38 80 00 00 */	li r4, 0
/* 80A0CB34  4B 5F F9 01 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A0CB38  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CB3C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CB40  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CB44  38 80 00 00 */	li r4, 0
/* 80A0CB48  4B 5F F8 55 */	bl mDoMtx_XrotM__FPA4_fs
/* 80A0CB4C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CB50  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CB54  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CB58  38 80 00 00 */	li r4, 0
/* 80A0CB5C  4B 5F F9 71 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80A0CB60  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CB64  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CB68  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CB6C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80A0CB70  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A0CB74  7C 80 EA 14 */	add r4, r0, r29
/* 80A0CB78  4B 93 99 39 */	bl PSMTXCopy
/* 80A0CB7C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A0CB80  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A0CB84  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0CB88  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80A0CB8C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80A0CB90  4B 93 99 21 */	bl PSMTXCopy
lbl_80A0CB94:
/* 80A0CB94  38 60 00 01 */	li r3, 1
/* 80A0CB98  39 61 00 20 */	addi r11, r1, 0x20
/* 80A0CB9C  4B 95 56 89 */	bl _restgpr_28
/* 80A0CBA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A0CBA4  7C 08 03 A6 */	mtlr r0
/* 80A0CBA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A0CBAC  4E 80 00 20 */	blr 
