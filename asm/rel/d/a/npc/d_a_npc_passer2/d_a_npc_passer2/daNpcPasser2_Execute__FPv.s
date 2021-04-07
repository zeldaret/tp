lbl_80AA8304:
/* 80AA8304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA8308  7C 08 02 A6 */	mflr r0
/* 80AA830C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA8310  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA8314  4B 8B 9E C9 */	bl _savegpr_29
/* 80AA8318  7C 7F 1B 78 */	mr r31, r3
/* 80AA831C  80 03 09 C4 */	lwz r0, 0x9c4(r3)
/* 80AA8320  2C 00 00 10 */	cmpwi r0, 0x10
/* 80AA8324  40 80 00 1C */	bge lbl_80AA8340
/* 80AA8328  3C 60 80 42 */	lis r3, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA832C  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA8330  1C 00 01 64 */	mulli r0, r0, 0x164
/* 80AA8334  7C 63 02 14 */	add r3, r3, r0
/* 80AA8338  C0 03 01 60 */	lfs f0, 0x160(r3)
/* 80AA833C  48 00 00 18 */	b lbl_80AA8354
lbl_80AA8340:
/* 80AA8340  3C 60 80 42 */	lis r3, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA8344  38 63 59 84 */	addi r3, r3, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA8348  1C 00 01 64 */	mulli r0, r0, 0x164
/* 80AA834C  7C 63 02 14 */	add r3, r3, r0
/* 80AA8350  C0 03 01 60 */	lfs f0, 0x160(r3)
lbl_80AA8354:
/* 80AA8354  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 80AA8358  80 1F 09 C4 */	lwz r0, 0x9c4(r31)
/* 80AA835C  38 7F 08 0C */	addi r3, r31, 0x80c
/* 80AA8360  2C 00 00 10 */	cmpwi r0, 0x10
/* 80AA8364  40 80 00 1C */	bge lbl_80AA8380
/* 80AA8368  3C 80 80 42 */	lis r4, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA836C  38 84 59 84 */	addi r4, r4, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA8370  1C 00 01 64 */	mulli r0, r0, 0x164
/* 80AA8374  7C 84 02 14 */	add r4, r4, r0
/* 80AA8378  C0 24 01 64 */	lfs f1, 0x164(r4)
/* 80AA837C  48 00 00 18 */	b lbl_80AA8394
lbl_80AA8380:
/* 80AA8380  3C 80 80 42 */	lis r4, l_Cd_HIO@ha /* 0x80425984@ha */
/* 80AA8384  38 84 59 84 */	addi r4, r4, l_Cd_HIO@l /* 0x80425984@l */
/* 80AA8388  1C 00 01 64 */	mulli r0, r0, 0x164
/* 80AA838C  7C 84 02 14 */	add r4, r4, r0
/* 80AA8390  C0 24 01 64 */	lfs f1, 0x164(r4)
lbl_80AA8394:
/* 80AA8394  4B 5C DB AD */	bl SetWallR__12dBgS_AcchCirFf
/* 80AA8398  7F E3 FB 78 */	mr r3, r31
/* 80AA839C  4B FF F2 2D */	bl callExecute__14daNpcPasser2_cFv
/* 80AA83A0  3B DF 0A 38 */	addi r30, r31, 0xa38
/* 80AA83A4  7F C3 F3 78 */	mr r3, r30
/* 80AA83A8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80AA83AC  3C 80 80 AB */	lis r4, lit_4450@ha /* 0x80AA8A54@ha */
/* 80AA83B0  C0 44 8A 54 */	lfs f2, lit_4450@l(r4)  /* 0x80AA8A54@l */
/* 80AA83B4  3C 80 80 AB */	lis r4, lit_4451@ha /* 0x80AA8A58@ha */
/* 80AA83B8  C0 64 8A 58 */	lfs f3, lit_4451@l(r4)  /* 0x80AA8A58@l */
/* 80AA83BC  4B 7C 76 81 */	bl cLib_addCalc2__FPffff
/* 80AA83C0  7F E3 FB 78 */	mr r3, r31
/* 80AA83C4  4B 6A E9 F9 */	bl animation__9daNpcCd_cFv
/* 80AA83C8  38 7F 09 AC */	addi r3, r31, 0x9ac
/* 80AA83CC  3B BF 04 D0 */	addi r29, r31, 0x4d0
/* 80AA83D0  7F A4 EB 78 */	mr r4, r29
/* 80AA83D4  4B 7C 6E 09 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80AA83D8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80AA83DC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80AA83E0  40 82 00 18 */	bne lbl_80AA83F8
/* 80AA83E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA83E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA83EC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AA83F0  38 9F 08 88 */	addi r4, r31, 0x888
/* 80AA83F4  4B 7B C7 B5 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80AA83F8:
/* 80AA83F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AA83FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AA8400  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80AA8404  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80AA8408  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80AA840C  4B 89 E4 DD */	bl PSMTXTrans
/* 80AA8410  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AA8414  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AA8418  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80AA841C  4B 56 40 19 */	bl mDoMtx_YrotM__FPA4_fs
/* 80AA8420  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80AA8424  80 83 00 04 */	lwz r4, 4(r3)
/* 80AA8428  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AA842C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AA8430  38 84 00 24 */	addi r4, r4, 0x24
/* 80AA8434  4B 89 E0 7D */	bl PSMTXCopy
/* 80AA8438  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80AA843C  4B 56 8D B1 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80AA8440  7F E3 FB 78 */	mr r3, r31
/* 80AA8444  80 9F 09 C4 */	lwz r4, 0x9c4(r31)
/* 80AA8448  4B 6A DF 81 */	bl setAttention__9daNpcCd_cFi
/* 80AA844C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80AA8450  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80AA8454  41 82 00 90 */	beq lbl_80AA84E4
/* 80AA8458  80 7F 0A 2C */	lwz r3, 0xa2c(r31)
/* 80AA845C  3C 03 00 00 */	addis r0, r3, 0
/* 80AA8460  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AA8464  41 82 00 80 */	beq lbl_80AA84E4
/* 80AA8468  4B 70 41 15 */	bl dKy_darkworld_check__Fv
/* 80AA846C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA8470  41 82 00 10 */	beq lbl_80AA8480
/* 80AA8474  4B 6F 77 49 */	bl dKy_getDarktime_week__Fv
/* 80AA8478  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80AA847C  48 00 00 08 */	b lbl_80AA8484
lbl_80AA8480:
/* 80AA8480  4B 70 06 B9 */	bl dKy_get_dayofweek__Fv
lbl_80AA8484:
/* 80AA8484  80 1F 0A 28 */	lwz r0, 0xa28(r31)
/* 80AA8488  7C 00 18 00 */	cmpw r0, r3
/* 80AA848C  40 82 00 58 */	bne lbl_80AA84E4
/* 80AA8490  4B 70 40 ED */	bl dKy_darkworld_check__Fv
/* 80AA8494  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA8498  41 82 00 10 */	beq lbl_80AA84A8
/* 80AA849C  4B 6F 76 95 */	bl dKy_getDarktime_minute__Fv
/* 80AA84A0  7C 7E 1B 78 */	mr r30, r3
/* 80AA84A4  48 00 00 0C */	b lbl_80AA84B0
lbl_80AA84A8:
/* 80AA84A8  4B 6F 75 95 */	bl dKy_getdaytime_minute__Fv
/* 80AA84AC  7C 7E 1B 78 */	mr r30, r3
lbl_80AA84B0:
/* 80AA84B0  4B 70 40 CD */	bl dKy_darkworld_check__Fv
/* 80AA84B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA84B8  41 82 00 0C */	beq lbl_80AA84C4
/* 80AA84BC  4B 6F 76 39 */	bl dKy_getDarktime_hour__Fv
/* 80AA84C0  48 00 00 08 */	b lbl_80AA84C8
lbl_80AA84C4:
/* 80AA84C4  4B 6F 75 4D */	bl dKy_getdaytime_hour__Fv
lbl_80AA84C8:
/* 80AA84C8  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 80AA84CC  7C 7E 02 14 */	add r3, r30, r0
/* 80AA84D0  80 1F 0A 2C */	lwz r0, 0xa2c(r31)
/* 80AA84D4  7C 03 00 00 */	cmpw r3, r0
/* 80AA84D8  41 80 00 0C */	blt lbl_80AA84E4
/* 80AA84DC  7F E3 FB 78 */	mr r3, r31
/* 80AA84E0  4B 57 17 9D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80AA84E4:
/* 80AA84E4  38 60 00 01 */	li r3, 1
/* 80AA84E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA84EC  4B 8B 9D 3D */	bl _restgpr_29
/* 80AA84F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA84F4  7C 08 03 A6 */	mtlr r0
/* 80AA84F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA84FC  4E 80 00 20 */	blr 
