lbl_80ACD380:
/* 80ACD380  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ACD384  7C 08 02 A6 */	mflr r0
/* 80ACD388  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACD38C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80ACD390  7C 7F 1B 78 */	mr r31, r3
/* 80ACD394  4B 6C B5 BD */	bl itemRotate__13dShopSystem_cFv
/* 80ACD398  3C 60 80 43 */	lis r3, g_cursorHIO@ha /* 0x80430110@ha */
/* 80ACD39C  38 63 01 10 */	addi r3, r3, g_cursorHIO@l /* 0x80430110@l */
/* 80ACD3A0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80ACD3A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80ACD3A8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80ACD3AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80ACD3B0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80ACD3B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80ACD3B8  7F E3 FB 78 */	mr r3, r31
/* 80ACD3BC  38 81 00 08 */	addi r4, r1, 8
/* 80ACD3C0  4B 6C B6 6D */	bl itemZoom__13dShopSystem_cFP4cXyz
/* 80ACD3C4  7F E3 FB 78 */	mr r3, r31
/* 80ACD3C8  4B 6C B4 B1 */	bl drawCursor__13dShopSystem_cFv
/* 80ACD3CC  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80ACD3D0  28 03 00 00 */	cmplwi r3, 0
/* 80ACD3D4  41 82 00 70 */	beq lbl_80ACD444
/* 80ACD3D8  80 83 00 04 */	lwz r4, 4(r3)
/* 80ACD3DC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80ACD3E0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80ACD3E4  80 84 00 04 */	lwz r4, 4(r4)
/* 80ACD3E8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80ACD3EC  4B 6D 79 B5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80ACD3F0  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80ACD3F4  80 63 00 04 */	lwz r3, 4(r3)
/* 80ACD3F8  80 83 00 04 */	lwz r4, 4(r3)
/* 80ACD3FC  7F E3 FB 78 */	mr r3, r31
/* 80ACD400  4B 55 00 2D */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80ACD404  88 1F 10 C0 */	lbz r0, 0x10c0(r31)
/* 80ACD408  28 00 00 00 */	cmplwi r0, 0
/* 80ACD40C  40 82 00 1C */	bne lbl_80ACD428
/* 80ACD410  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80ACD414  80 63 00 04 */	lwz r3, 4(r3)
/* 80ACD418  80 63 00 04 */	lwz r3, 4(r3)
/* 80ACD41C  38 63 00 78 */	addi r3, r3, 0x78
/* 80ACD420  4B 85 84 81 */	bl hide__13J3DShapeTableFv
/* 80ACD424  48 00 00 18 */	b lbl_80ACD43C
lbl_80ACD428:
/* 80ACD428  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80ACD42C  80 63 00 04 */	lwz r3, 4(r3)
/* 80ACD430  80 63 00 04 */	lwz r3, 4(r3)
/* 80ACD434  38 63 00 78 */	addi r3, r3, 0x78
/* 80ACD438  4B 85 84 A1 */	bl show__13J3DShapeTableFv
lbl_80ACD43C:
/* 80ACD43C  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80ACD440  4B 54 3D 81 */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_80ACD444:
/* 80ACD444  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80ACD448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ACD44C  7C 08 03 A6 */	mtlr r0
/* 80ACD450  38 21 00 20 */	addi r1, r1, 0x20
/* 80ACD454  4E 80 00 20 */	blr 
