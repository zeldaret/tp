lbl_80B25A54:
/* 80B25A54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B25A58  7C 08 02 A6 */	mflr r0
/* 80B25A5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B25A60  39 61 00 20 */	addi r11, r1, 0x20
/* 80B25A64  4B 83 C7 75 */	bl _savegpr_28
/* 80B25A68  2C 04 00 00 */	cmpwi r4, 0
/* 80B25A6C  40 82 00 F0 */	bne lbl_80B25B5C
/* 80B25A70  A3 83 00 14 */	lhz r28, 0x14(r3)
/* 80B25A74  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B25A78  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B25A7C  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80B25A80  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 80B25A84  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80B25A88  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B25A8C  1F DC 00 30 */	mulli r30, r28, 0x30
/* 80B25A90  7C 60 F2 14 */	add r3, r0, r30
/* 80B25A94  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80B25A98  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80B25A9C  80 84 00 00 */	lwz r4, 0(r4)
/* 80B25AA0  4B 82 0A 11 */	bl PSMTXCopy
/* 80B25AA4  2C 1C 00 01 */	cmpwi r28, 1
/* 80B25AA8  40 82 00 40 */	bne lbl_80B25AE8
/* 80B25AAC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B25AB0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B25AB4  80 63 00 00 */	lwz r3, 0(r3)
/* 80B25AB8  A8 BD 05 F2 */	lha r5, 0x5f2(r29)
/* 80B25ABC  3C 80 80 B2 */	lis r4, lit_3770@ha /* 0x80B26584@ha */
/* 80B25AC0  C0 24 65 84 */	lfs f1, lit_3770@l(r4)  /* 0x80B26584@l */
/* 80B25AC4  C0 1D 05 F8 */	lfs f0, 0x5f8(r29)
/* 80B25AC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B25ACC  FC 00 00 1E */	fctiwz f0, f0
/* 80B25AD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B25AD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B25AD8  7C 05 02 14 */	add r0, r5, r0
/* 80B25ADC  7C 04 07 34 */	extsh r4, r0
/* 80B25AE0  4B 4E 69 55 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B25AE4  48 00 00 44 */	b lbl_80B25B28
lbl_80B25AE8:
/* 80B25AE8  41 80 00 40 */	blt lbl_80B25B28
/* 80B25AEC  2C 1C 00 03 */	cmpwi r28, 3
/* 80B25AF0  41 81 00 38 */	bgt lbl_80B25B28
/* 80B25AF4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B25AF8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B25AFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B25B00  57 80 08 3C */	slwi r0, r28, 1
/* 80B25B04  7C 9D 02 14 */	add r4, r29, r0
/* 80B25B08  A8 84 05 F0 */	lha r4, 0x5f0(r4)
/* 80B25B0C  C0 1D 05 F8 */	lfs f0, 0x5f8(r29)
/* 80B25B10  FC 00 00 1E */	fctiwz f0, f0
/* 80B25B14  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B25B18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B25B1C  7C 04 02 14 */	add r0, r4, r0
/* 80B25B20  7C 04 07 34 */	extsh r4, r0
/* 80B25B24  4B 4E 69 11 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80B25B28:
/* 80B25B28  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B25B2C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B25B30  80 63 00 00 */	lwz r3, 0(r3)
/* 80B25B34  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80B25B38  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B25B3C  7C 80 F2 14 */	add r4, r0, r30
/* 80B25B40  4B 82 09 71 */	bl PSMTXCopy
/* 80B25B44  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B25B48  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B25B4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B25B50  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80B25B54  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80B25B58  4B 82 09 59 */	bl PSMTXCopy
lbl_80B25B5C:
/* 80B25B5C  38 60 00 01 */	li r3, 1
/* 80B25B60  39 61 00 20 */	addi r11, r1, 0x20
/* 80B25B64  4B 83 C6 C1 */	bl _restgpr_28
/* 80B25B68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B25B6C  7C 08 03 A6 */	mtlr r0
/* 80B25B70  38 21 00 20 */	addi r1, r1, 0x20
/* 80B25B74  4E 80 00 20 */	blr 
