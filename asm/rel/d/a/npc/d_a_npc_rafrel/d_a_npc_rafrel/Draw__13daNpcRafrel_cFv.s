lbl_80ABA3D8:
/* 80ABA3D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABA3DC  7C 08 02 A6 */	mflr r0
/* 80ABA3E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABA3E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABA3E8  93 C1 00 08 */	stw r30, 8(r1)
/* 80ABA3EC  7C 7F 1B 78 */	mr r31, r3
/* 80ABA3F0  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80ABA3F4  80 84 00 04 */	lwz r4, 4(r4)
/* 80ABA3F8  80 84 00 04 */	lwz r4, 4(r4)
/* 80ABA3FC  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80ABA400  80 84 00 04 */	lwz r4, 4(r4)
/* 80ABA404  80 03 0B DC */	lwz r0, 0xbdc(r3)
/* 80ABA408  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80ABA40C  38 80 00 00 */	li r4, 0
/* 80ABA410  38 A0 00 00 */	li r5, 0
/* 80ABA414  3C C0 80 AC */	lis r6, m__19daNpcRafrel_Param_c@ha
/* 80ABA418  38 C6 F9 E0 */	addi r6, r6, m__19daNpcRafrel_Param_c@l
/* 80ABA41C  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80ABA420  38 C0 00 00 */	li r6, 0
/* 80ABA424  38 E0 00 00 */	li r7, 0
/* 80ABA428  4B 69 7E 84 */	b draw__8daNpcF_cFiifP11_GXColorS10i
/* 80ABA42C  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80ABA430  28 04 00 00 */	cmplwi r4, 0
/* 80ABA434  41 82 00 58 */	beq lbl_80ABA48C
/* 80ABA438  88 1F 0E 17 */	lbz r0, 0xe17(r31)
/* 80ABA43C  28 00 00 01 */	cmplwi r0, 1
/* 80ABA440  3B C0 00 13 */	li r30, 0x13
/* 80ABA444  40 82 00 08 */	bne lbl_80ABA44C
/* 80ABA448  3B C0 00 14 */	li r30, 0x14
lbl_80ABA44C:
/* 80ABA44C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80ABA450  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80ABA454  80 84 00 04 */	lwz r4, 4(r4)
/* 80ABA458  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80ABA45C  4B 6E A9 44 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80ABA460  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80ABA464  80 63 00 04 */	lwz r3, 4(r3)
/* 80ABA468  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80ABA46C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80ABA470  1C 1E 00 30 */	mulli r0, r30, 0x30
/* 80ABA474  7C 63 02 14 */	add r3, r3, r0
/* 80ABA478  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80ABA47C  38 84 00 24 */	addi r4, r4, 0x24
/* 80ABA480  4B 88 C0 30 */	b PSMTXCopy
/* 80ABA484  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80ABA488  4B 55 38 3C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80ABA48C:
/* 80ABA48C  38 60 00 01 */	li r3, 1
/* 80ABA490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABA494  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ABA498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABA49C  7C 08 03 A6 */	mtlr r0
/* 80ABA4A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABA4A4  4E 80 00 20 */	blr 
