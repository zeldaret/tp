lbl_80B2DE78:
/* 80B2DE78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B2DE7C  7C 08 02 A6 */	mflr r0
/* 80B2DE80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B2DE84  39 61 00 20 */	addi r11, r1, 0x20
/* 80B2DE88  4B 83 43 51 */	bl _savegpr_28
/* 80B2DE8C  2C 04 00 00 */	cmpwi r4, 0
/* 80B2DE90  40 82 00 A0 */	bne lbl_80B2DF30
/* 80B2DE94  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80B2DE98  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B2DE9C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B2DEA0  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80B2DEA4  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80B2DEA8  28 1C 00 00 */	cmplwi r28, 0
/* 80B2DEAC  41 82 00 84 */	beq lbl_80B2DF30
/* 80B2DEB0  2C 1F 00 01 */	cmpwi r31, 1
/* 80B2DEB4  41 80 00 7C */	blt lbl_80B2DF30
/* 80B2DEB8  2C 1F 00 09 */	cmpwi r31, 9
/* 80B2DEBC  41 81 00 74 */	bgt lbl_80B2DF30
/* 80B2DEC0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80B2DEC4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B2DEC8  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80B2DECC  7C 60 EA 14 */	add r3, r0, r29
/* 80B2DED0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80B2DED4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80B2DED8  80 84 00 00 */	lwz r4, 0(r4)
/* 80B2DEDC  4B 81 85 D5 */	bl PSMTXCopy
/* 80B2DEE0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B2DEE4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B2DEE8  80 63 00 00 */	lwz r3, 0(r3)
/* 80B2DEEC  57 E0 08 3C */	slwi r0, r31, 1
/* 80B2DEF0  7C 9C 02 14 */	add r4, r28, r0
/* 80B2DEF4  A8 84 05 B2 */	lha r4, 0x5b2(r4)
/* 80B2DEF8  4B 4D E5 3D */	bl mDoMtx_YrotM__FPA4_fs
/* 80B2DEFC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B2DF00  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B2DF04  80 63 00 00 */	lwz r3, 0(r3)
/* 80B2DF08  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80B2DF0C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B2DF10  7C 80 EA 14 */	add r4, r0, r29
/* 80B2DF14  4B 81 85 9D */	bl PSMTXCopy
/* 80B2DF18  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B2DF1C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B2DF20  80 63 00 00 */	lwz r3, 0(r3)
/* 80B2DF24  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80B2DF28  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80B2DF2C  4B 81 85 85 */	bl PSMTXCopy
lbl_80B2DF30:
/* 80B2DF30  38 60 00 01 */	li r3, 1
/* 80B2DF34  39 61 00 20 */	addi r11, r1, 0x20
/* 80B2DF38  4B 83 42 ED */	bl _restgpr_28
/* 80B2DF3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B2DF40  7C 08 03 A6 */	mtlr r0
/* 80B2DF44  38 21 00 20 */	addi r1, r1, 0x20
/* 80B2DF48  4E 80 00 20 */	blr 
