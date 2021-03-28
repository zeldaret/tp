lbl_809AFE20:
/* 809AFE20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809AFE24  7C 08 02 A6 */	mflr r0
/* 809AFE28  90 01 00 24 */	stw r0, 0x24(r1)
/* 809AFE2C  39 61 00 20 */	addi r11, r1, 0x20
/* 809AFE30  4B 9B 23 A8 */	b _savegpr_28
/* 809AFE34  2C 04 00 00 */	cmpwi r4, 0
/* 809AFE38  40 82 01 C0 */	bne lbl_809AFFF8
/* 809AFE3C  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 809AFE40  3C 60 80 43 */	lis r3, j3dSys@ha
/* 809AFE44  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 809AFE48  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 809AFE4C  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 809AFE50  28 1C 00 00 */	cmplwi r28, 0
/* 809AFE54  41 82 01 A4 */	beq lbl_809AFFF8
/* 809AFE58  2C 1F 00 09 */	cmpwi r31, 9
/* 809AFE5C  40 82 00 6C */	bne lbl_809AFEC8
/* 809AFE60  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 809AFE64  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809AFE68  1F BF 00 30 */	mulli r29, r31, 0x30
/* 809AFE6C  7C 60 EA 14 */	add r3, r0, r29
/* 809AFE70  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 809AFE74  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 809AFE78  80 84 00 00 */	lwz r4, 0(r4)
/* 809AFE7C  4B 99 66 34 */	b PSMTXCopy
/* 809AFE80  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809AFE84  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809AFE88  80 63 00 00 */	lwz r3, 0(r3)
/* 809AFE8C  A8 9C 05 E2 */	lha r4, 0x5e2(r28)
/* 809AFE90  4B 65 C5 0C */	b mDoMtx_XrotM__FPA4_fs
/* 809AFE94  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809AFE98  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809AFE9C  80 63 00 00 */	lwz r3, 0(r3)
/* 809AFEA0  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 809AFEA4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809AFEA8  7C 80 EA 14 */	add r4, r0, r29
/* 809AFEAC  4B 99 66 04 */	b PSMTXCopy
/* 809AFEB0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809AFEB4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809AFEB8  80 63 00 00 */	lwz r3, 0(r3)
/* 809AFEBC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 809AFEC0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 809AFEC4  4B 99 65 EC */	b PSMTXCopy
lbl_809AFEC8:
/* 809AFEC8  2C 1F 00 00 */	cmpwi r31, 0
/* 809AFECC  40 82 00 94 */	bne lbl_809AFF60
/* 809AFED0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 809AFED4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809AFED8  1F BF 00 30 */	mulli r29, r31, 0x30
/* 809AFEDC  7C 60 EA 14 */	add r3, r0, r29
/* 809AFEE0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 809AFEE4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 809AFEE8  80 84 00 00 */	lwz r4, 0(r4)
/* 809AFEEC  4B 99 65 C4 */	b PSMTXCopy
/* 809AFEF0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809AFEF4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809AFEF8  80 63 00 00 */	lwz r3, 0(r3)
/* 809AFEFC  38 80 00 00 */	li r4, 0
/* 809AFF00  4B 65 C5 34 */	b mDoMtx_YrotM__FPA4_fs
/* 809AFF04  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809AFF08  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809AFF0C  80 63 00 00 */	lwz r3, 0(r3)
/* 809AFF10  38 80 00 00 */	li r4, 0
/* 809AFF14  4B 65 C4 88 */	b mDoMtx_XrotM__FPA4_fs
/* 809AFF18  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809AFF1C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809AFF20  80 63 00 00 */	lwz r3, 0(r3)
/* 809AFF24  38 80 00 00 */	li r4, 0
/* 809AFF28  4B 65 C5 A4 */	b mDoMtx_ZrotM__FPA4_fs
/* 809AFF2C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809AFF30  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809AFF34  80 63 00 00 */	lwz r3, 0(r3)
/* 809AFF38  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 809AFF3C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809AFF40  7C 80 EA 14 */	add r4, r0, r29
/* 809AFF44  4B 99 65 6C */	b PSMTXCopy
/* 809AFF48  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809AFF4C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809AFF50  80 63 00 00 */	lwz r3, 0(r3)
/* 809AFF54  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 809AFF58  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 809AFF5C  4B 99 65 54 */	b PSMTXCopy
lbl_809AFF60:
/* 809AFF60  2C 1F 00 00 */	cmpwi r31, 0
/* 809AFF64  40 82 00 94 */	bne lbl_809AFFF8
/* 809AFF68  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 809AFF6C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809AFF70  1F BF 00 30 */	mulli r29, r31, 0x30
/* 809AFF74  7C 60 EA 14 */	add r3, r0, r29
/* 809AFF78  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 809AFF7C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 809AFF80  80 84 00 00 */	lwz r4, 0(r4)
/* 809AFF84  4B 99 65 2C */	b PSMTXCopy
/* 809AFF88  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809AFF8C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809AFF90  80 63 00 00 */	lwz r3, 0(r3)
/* 809AFF94  38 80 00 00 */	li r4, 0
/* 809AFF98  4B 65 C4 9C */	b mDoMtx_YrotM__FPA4_fs
/* 809AFF9C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809AFFA0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809AFFA4  80 63 00 00 */	lwz r3, 0(r3)
/* 809AFFA8  38 80 00 00 */	li r4, 0
/* 809AFFAC  4B 65 C3 F0 */	b mDoMtx_XrotM__FPA4_fs
/* 809AFFB0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809AFFB4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809AFFB8  80 63 00 00 */	lwz r3, 0(r3)
/* 809AFFBC  38 80 00 00 */	li r4, 0
/* 809AFFC0  4B 65 C5 0C */	b mDoMtx_ZrotM__FPA4_fs
/* 809AFFC4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809AFFC8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809AFFCC  80 63 00 00 */	lwz r3, 0(r3)
/* 809AFFD0  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 809AFFD4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809AFFD8  7C 80 EA 14 */	add r4, r0, r29
/* 809AFFDC  4B 99 64 D4 */	b PSMTXCopy
/* 809AFFE0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 809AFFE4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 809AFFE8  80 63 00 00 */	lwz r3, 0(r3)
/* 809AFFEC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 809AFFF0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 809AFFF4  4B 99 64 BC */	b PSMTXCopy
lbl_809AFFF8:
/* 809AFFF8  38 60 00 01 */	li r3, 1
/* 809AFFFC  39 61 00 20 */	addi r11, r1, 0x20
/* 809B0000  4B 9B 22 24 */	b _restgpr_28
/* 809B0004  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B0008  7C 08 03 A6 */	mtlr r0
/* 809B000C  38 21 00 20 */	addi r1, r1, 0x20
/* 809B0010  4E 80 00 20 */	blr 
