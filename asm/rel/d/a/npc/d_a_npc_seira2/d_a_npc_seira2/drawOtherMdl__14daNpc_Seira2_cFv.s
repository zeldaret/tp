lbl_80AD2558:
/* 80AD2558  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD255C  7C 08 02 A6 */	mflr r0
/* 80AD2560  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD2564  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AD2568  7C 7F 1B 78 */	mr r31, r3
/* 80AD256C  88 03 10 ED */	lbz r0, 0x10ed(r3)
/* 80AD2570  28 00 00 00 */	cmplwi r0, 0
/* 80AD2574  41 82 00 30 */	beq lbl_80AD25A4
/* 80AD2578  4B 6C 63 D8 */	b itemRotate__13dShopSystem_cFv
/* 80AD257C  3C 60 80 AD */	lis r3, lit_4055@ha
/* 80AD2580  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)
/* 80AD2584  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AD2588  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AD258C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AD2590  7F E3 FB 78 */	mr r3, r31
/* 80AD2594  38 81 00 08 */	addi r4, r1, 8
/* 80AD2598  4B 6C 64 94 */	b itemZoom__13dShopSystem_cFP4cXyz
/* 80AD259C  7F E3 FB 78 */	mr r3, r31
/* 80AD25A0  4B 6C 62 D8 */	b drawCursor__13dShopSystem_cFv
lbl_80AD25A4:
/* 80AD25A4  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80AD25A8  28 03 00 00 */	cmplwi r3, 0
/* 80AD25AC  41 82 00 70 */	beq lbl_80AD261C
/* 80AD25B0  80 83 00 04 */	lwz r4, 4(r3)
/* 80AD25B4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80AD25B8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80AD25BC  80 84 00 04 */	lwz r4, 4(r4)
/* 80AD25C0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80AD25C4  4B 6D 27 DC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80AD25C8  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80AD25CC  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD25D0  80 83 00 04 */	lwz r4, 4(r3)
/* 80AD25D4  7F E3 FB 78 */	mr r3, r31
/* 80AD25D8  4B 54 AE 54 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80AD25DC  88 1F 10 C0 */	lbz r0, 0x10c0(r31)
/* 80AD25E0  28 00 00 00 */	cmplwi r0, 0
/* 80AD25E4  40 82 00 1C */	bne lbl_80AD2600
/* 80AD25E8  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80AD25EC  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD25F0  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD25F4  38 63 00 78 */	addi r3, r3, 0x78
/* 80AD25F8  4B 85 32 A8 */	b hide__13J3DShapeTableFv
/* 80AD25FC  48 00 00 18 */	b lbl_80AD2614
lbl_80AD2600:
/* 80AD2600  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80AD2604  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD2608  80 63 00 04 */	lwz r3, 4(r3)
/* 80AD260C  38 63 00 78 */	addi r3, r3, 0x78
/* 80AD2610  4B 85 32 C8 */	b show__13J3DShapeTableFv
lbl_80AD2614:
/* 80AD2614  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80AD2618  4B 53 EB A8 */	b entryDL__16mDoExt_McaMorfSOFv
lbl_80AD261C:
/* 80AD261C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AD2620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD2624  7C 08 03 A6 */	mtlr r0
/* 80AD2628  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD262C  4E 80 00 20 */	blr 
