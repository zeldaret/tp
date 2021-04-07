lbl_805EFDD4:
/* 805EFDD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805EFDD8  7C 08 02 A6 */	mflr r0
/* 805EFDDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805EFDE0  39 61 00 40 */	addi r11, r1, 0x40
/* 805EFDE4  4B D7 23 E5 */	bl _savegpr_24
/* 805EFDE8  7C 79 1B 78 */	mr r25, r3
/* 805EFDEC  3B 99 1A E8 */	addi r28, r25, 0x1ae8
/* 805EFDF0  80 63 05 DC */	lwz r3, 0x5dc(r3)
/* 805EFDF4  83 A3 00 04 */	lwz r29, 4(r3)
/* 805EFDF8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805EFDFC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805EFE00  80 63 00 00 */	lwz r3, 0(r3)
/* 805EFE04  A8 99 04 DE */	lha r4, 0x4de(r25)
/* 805EFE08  4B A1 C5 D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 805EFE0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805EFE10  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805EFE14  80 63 00 00 */	lwz r3, 0(r3)
/* 805EFE18  A8 99 04 DC */	lha r4, 0x4dc(r25)
/* 805EFE1C  4B A1 C5 81 */	bl mDoMtx_XrotM__FPA4_fs
/* 805EFE20  3C 60 80 5F */	lis r3, lit_3794@ha /* 0x805F41A4@ha */
/* 805EFE24  C0 23 41 A4 */	lfs f1, lit_3794@l(r3)  /* 0x805F41A4@l */
/* 805EFE28  D0 21 00 08 */	stfs f1, 8(r1)
/* 805EFE2C  3C 60 80 5F */	lis r3, lit_4154@ha /* 0x805F41B4@ha */
/* 805EFE30  C0 03 41 B4 */	lfs f0, lit_4154@l(r3)  /* 0x805F41B4@l */
/* 805EFE34  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805EFE38  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805EFE3C  38 61 00 08 */	addi r3, r1, 8
/* 805EFE40  38 99 07 30 */	addi r4, r25, 0x730
/* 805EFE44  4B C8 10 A9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805EFE48  38 79 07 30 */	addi r3, r25, 0x730
/* 805EFE4C  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 805EFE50  7C 65 1B 78 */	mr r5, r3
/* 805EFE54  4B D5 72 3D */	bl PSVECAdd
/* 805EFE58  3B 60 00 00 */	li r27, 0
/* 805EFE5C  3B 40 00 00 */	li r26, 0
/* 805EFE60  3C 60 80 5F */	lis r3, l_HIO@ha /* 0x805F47DC@ha */
/* 805EFE64  3B C3 47 DC */	addi r30, r3, l_HIO@l /* 0x805F47DC@l */
/* 805EFE68  3C 60 80 5F */	lis r3, top_j@ha /* 0x805F4474@ha */
/* 805EFE6C  3B E3 44 74 */	addi r31, r3, top_j@l /* 0x805F4474@l */
/* 805EFE70  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805EFE74  3B 03 07 68 */	addi r24, r3, calc_mtx@l /* 0x80450768@l */
/* 805EFE78  48 00 00 B8 */	b lbl_805EFF30
lbl_805EFE7C:
/* 805EFE7C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805EFE80  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805EFE84  57 40 10 3A */	slwi r0, r26, 2
/* 805EFE88  7C 1F 00 2E */	lwzx r0, r31, r0
/* 805EFE8C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 805EFE90  7C 63 02 14 */	add r3, r3, r0
/* 805EFE94  80 98 00 00 */	lwz r4, 0(r24)
/* 805EFE98  4B D5 66 19 */	bl PSMTXCopy
/* 805EFE9C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 805EFEA0  FC 40 08 90 */	fmr f2, f1
/* 805EFEA4  FC 60 08 90 */	fmr f3, f1
/* 805EFEA8  38 60 00 01 */	li r3, 1
/* 805EFEAC  4B C8 0F F9 */	bl MtxScale__FfffUc
/* 805EFEB0  2C 1A 00 08 */	cmpwi r26, 8
/* 805EFEB4  41 80 00 28 */	blt lbl_805EFEDC
/* 805EFEB8  3C 60 80 5F */	lis r3, lit_3794@ha /* 0x805F41A4@ha */
/* 805EFEBC  C0 03 41 A4 */	lfs f0, lit_3794@l(r3)  /* 0x805F41A4@l */
/* 805EFEC0  D0 01 00 08 */	stfs f0, 8(r1)
/* 805EFEC4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805EFEC8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805EFECC  38 61 00 08 */	addi r3, r1, 8
/* 805EFED0  38 9C 00 10 */	addi r4, r28, 0x10
/* 805EFED4  4B C8 10 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805EFED8  48 00 00 20 */	b lbl_805EFEF8
lbl_805EFEDC:
/* 805EFEDC  57 40 07 BE */	clrlwi r0, r26, 0x1e
/* 805EFEE0  1C 80 00 0C */	mulli r4, r0, 0xc
/* 805EFEE4  3C 60 80 5F */	lis r3, top_pos_data@ha /* 0x805F48BC@ha */
/* 805EFEE8  38 03 48 BC */	addi r0, r3, top_pos_data@l /* 0x805F48BC@l */
/* 805EFEEC  7C 60 22 14 */	add r3, r0, r4
/* 805EFEF0  38 9C 00 10 */	addi r4, r28, 0x10
/* 805EFEF4  4B C8 0F F9 */	bl MtxPosition__FP4cXyzP4cXyz
lbl_805EFEF8:
/* 805EFEF8  7F 23 CB 78 */	mr r3, r25
/* 805EFEFC  7F 84 E3 78 */	mr r4, r28
/* 805EFF00  4B FF FC 29 */	bl foot_IK__FP10b_gm_classP9b_gm_foot
/* 805EFF04  2C 03 00 00 */	cmpwi r3, 0
/* 805EFF08  41 82 00 20 */	beq lbl_805EFF28
/* 805EFF0C  3B 7B 00 01 */	addi r27, r27, 1
/* 805EFF10  2C 1B 00 50 */	cmpwi r27, 0x50
/* 805EFF14  40 80 00 14 */	bge lbl_805EFF28
/* 805EFF18  80 79 05 DC */	lwz r3, 0x5dc(r25)
/* 805EFF1C  4B A2 12 39 */	bl updateDL__16mDoExt_McaMorfSOFv
/* 805EFF20  3B 5A FF FF */	addi r26, r26, -1
/* 805EFF24  3B 9C FF D8 */	addi r28, r28, -40
lbl_805EFF28:
/* 805EFF28  3B 5A 00 01 */	addi r26, r26, 1
/* 805EFF2C  3B 9C 00 28 */	addi r28, r28, 0x28
lbl_805EFF30:
/* 805EFF30  2C 1A 00 0A */	cmpwi r26, 0xa
/* 805EFF34  41 80 FF 48 */	blt lbl_805EFE7C
/* 805EFF38  39 61 00 40 */	addi r11, r1, 0x40
/* 805EFF3C  4B D7 22 D9 */	bl _restgpr_24
/* 805EFF40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805EFF44  7C 08 03 A6 */	mtlr r0
/* 805EFF48  38 21 00 40 */	addi r1, r1, 0x40
/* 805EFF4C  4E 80 00 20 */	blr 
