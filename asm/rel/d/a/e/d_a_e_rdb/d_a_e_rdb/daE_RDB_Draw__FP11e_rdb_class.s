lbl_80765314:
/* 80765314  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80765318  7C 08 02 A6 */	mflr r0
/* 8076531C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80765320  39 61 00 50 */	addi r11, r1, 0x50
/* 80765324  4B BF CE B1 */	bl _savegpr_27
/* 80765328  7C 7D 1B 78 */	mr r29, r3
/* 8076532C  3C 60 80 77 */	lis r3, lit_4007@ha /* 0x8076B45C@ha */
/* 80765330  3B E3 B4 5C */	addi r31, r3, lit_4007@l /* 0x8076B45C@l */
/* 80765334  88 1D 0F E6 */	lbz r0, 0xfe6(r29)
/* 80765338  7C 00 07 75 */	extsb. r0, r0
/* 8076533C  41 82 00 0C */	beq lbl_80765348
/* 80765340  38 60 00 01 */	li r3, 1
/* 80765344  48 00 02 A4 */	b lbl_807655E8
lbl_80765348:
/* 80765348  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 8076534C  83 C3 00 04 */	lwz r30, 4(r3)
/* 80765350  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80765354  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80765358  38 80 00 00 */	li r4, 0
/* 8076535C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80765360  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80765364  4B A3 E4 61 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80765368  88 1D 0F CF */	lbz r0, 0xfcf(r29)
/* 8076536C  7C 00 07 75 */	extsb. r0, r0
/* 80765370  40 82 01 0C */	bne lbl_8076547C
/* 80765374  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80765378  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8076537C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80765380  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80765384  4B A3 FA 1D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80765388  38 80 00 03 */	li r4, 3
/* 8076538C  48 00 00 30 */	b lbl_807653BC
lbl_80765390:
/* 80765390  80 7E 00 04 */	lwz r3, 4(r30)
/* 80765394  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80765398  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 8076539C  7C 63 00 2E */	lwzx r3, r3, r0
/* 807653A0  80 63 00 08 */	lwz r3, 8(r3)
/* 807653A4  28 03 00 00 */	cmplwi r3, 0
/* 807653A8  41 82 00 10 */	beq lbl_807653B8
/* 807653AC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 807653B0  60 00 00 01 */	ori r0, r0, 1
/* 807653B4  90 03 00 0C */	stw r0, 0xc(r3)
lbl_807653B8:
/* 807653B8  38 84 00 01 */	addi r4, r4, 1
lbl_807653BC:
/* 807653BC  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 807653C0  28 00 00 04 */	cmplwi r0, 4
/* 807653C4  40 81 FF CC */	ble lbl_80765390
/* 807653C8  3B 60 00 00 */	li r27, 0
/* 807653CC  48 00 00 9C */	b lbl_80765468
lbl_807653D0:
/* 807653D0  80 7E 00 04 */	lwz r3, 4(r30)
/* 807653D4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 807653D8  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 807653DC  7F 83 00 2E */	lwzx r28, r3, r0
/* 807653E0  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 807653E4  38 80 00 00 */	li r4, 0
/* 807653E8  81 83 00 00 */	lwz r12, 0(r3)
/* 807653EC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807653F0  7D 89 03 A6 */	mtctr r12
/* 807653F4  4E 80 04 21 */	bctrl 
/* 807653F8  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 807653FC  FC 00 00 1E */	fctiwz f0, f0
/* 80765400  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80765404  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80765408  B0 03 00 00 */	sth r0, 0(r3)
/* 8076540C  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80765410  38 80 00 00 */	li r4, 0
/* 80765414  81 83 00 00 */	lwz r12, 0(r3)
/* 80765418  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8076541C  7D 89 03 A6 */	mtctr r12
/* 80765420  4E 80 04 21 */	bctrl 
/* 80765424  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80765428  FC 00 00 1E */	fctiwz f0, f0
/* 8076542C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80765430  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80765434  B0 03 00 02 */	sth r0, 2(r3)
/* 80765438  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8076543C  38 80 00 00 */	li r4, 0
/* 80765440  81 83 00 00 */	lwz r12, 0(r3)
/* 80765444  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80765448  7D 89 03 A6 */	mtctr r12
/* 8076544C  4E 80 04 21 */	bctrl 
/* 80765450  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80765454  FC 00 00 1E */	fctiwz f0, f0
/* 80765458  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8076545C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80765460  B0 03 00 04 */	sth r0, 4(r3)
/* 80765464  3B 7B 00 01 */	addi r27, r27, 1
lbl_80765468:
/* 80765468  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 8076546C  28 00 00 01 */	cmplwi r0, 1
/* 80765470  40 81 FF 60 */	ble lbl_807653D0
/* 80765474  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 80765478  4B 8A BD 49 */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_8076547C:
/* 8076547C  88 1D 0F CF */	lbz r0, 0xfcf(r29)
/* 80765480  2C 00 00 01 */	cmpwi r0, 1
/* 80765484  41 82 00 C4 */	beq lbl_80765548
/* 80765488  88 1D 06 80 */	lbz r0, 0x680(r29)
/* 8076548C  7C 00 07 75 */	extsb. r0, r0
/* 80765490  41 82 00 B8 */	beq lbl_80765548
/* 80765494  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80765498  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8076549C  80 9D 06 78 */	lwz r4, 0x678(r29)
/* 807654A0  80 84 00 04 */	lwz r4, 4(r4)
/* 807654A4  38 BD 01 0C */	addi r5, r29, 0x10c
/* 807654A8  4B A3 F8 F9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807654AC  80 7D 06 78 */	lwz r3, 0x678(r29)
/* 807654B0  80 63 00 04 */	lwz r3, 4(r3)
/* 807654B4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 807654B8  83 83 00 00 */	lwz r28, 0(r3)
/* 807654BC  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 807654C0  38 80 00 00 */	li r4, 0
/* 807654C4  81 83 00 00 */	lwz r12, 0(r3)
/* 807654C8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807654CC  7D 89 03 A6 */	mtctr r12
/* 807654D0  4E 80 04 21 */	bctrl 
/* 807654D4  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 807654D8  FC 00 00 1E */	fctiwz f0, f0
/* 807654DC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807654E0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807654E4  B0 03 00 00 */	sth r0, 0(r3)
/* 807654E8  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 807654EC  38 80 00 00 */	li r4, 0
/* 807654F0  81 83 00 00 */	lwz r12, 0(r3)
/* 807654F4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807654F8  7D 89 03 A6 */	mtctr r12
/* 807654FC  4E 80 04 21 */	bctrl 
/* 80765500  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80765504  FC 00 00 1E */	fctiwz f0, f0
/* 80765508  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8076550C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80765510  B0 03 00 02 */	sth r0, 2(r3)
/* 80765514  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80765518  38 80 00 00 */	li r4, 0
/* 8076551C  81 83 00 00 */	lwz r12, 0(r3)
/* 80765520  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80765524  7D 89 03 A6 */	mtctr r12
/* 80765528  4E 80 04 21 */	bctrl 
/* 8076552C  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80765530  FC 00 00 1E */	fctiwz f0, f0
/* 80765534  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80765538  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8076553C  B0 03 00 04 */	sth r0, 4(r3)
/* 80765540  80 7D 06 78 */	lwz r3, 0x678(r29)
/* 80765544  4B 8A 87 81 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80765548:
/* 80765548  88 1D 0F CF */	lbz r0, 0xfcf(r29)
/* 8076554C  7C 00 07 75 */	extsb. r0, r0
/* 80765550  40 82 00 94 */	bne lbl_807655E4
/* 80765554  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80765558  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8076555C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80765560  EC 21 00 2A */	fadds f1, f1, f0
/* 80765564  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80765568  D0 01 00 08 */	stfs f0, 8(r1)
/* 8076556C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80765570  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80765574  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80765578  A8 1D 06 7E */	lha r0, 0x67e(r29)
/* 8076557C  2C 00 00 07 */	cmpwi r0, 7
/* 80765580  40 82 00 08 */	bne lbl_80765588
/* 80765584  C0 3F 00 38 */	lfs f1, 0x38(r31)
lbl_80765588:
/* 80765588  80 7D 06 B4 */	lwz r3, 0x6b4(r29)
/* 8076558C  38 80 00 01 */	li r4, 1
/* 80765590  7F C5 F3 78 */	mr r5, r30
/* 80765594  38 C1 00 08 */	addi r6, r1, 8
/* 80765598  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8076559C  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 807655A0  C0 9D 07 C8 */	lfs f4, 0x7c8(r29)
/* 807655A4  38 FD 08 20 */	addi r7, r29, 0x820
/* 807655A8  39 1D 01 0C */	addi r8, r29, 0x10c
/* 807655AC  39 20 00 00 */	li r9, 0
/* 807655B0  C0 BF 00 08 */	lfs f5, 8(r31)
/* 807655B4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 807655B8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 807655BC  4B 8C 93 55 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807655C0  90 7D 06 B4 */	stw r3, 0x6b4(r29)
/* 807655C4  80 BD 06 78 */	lwz r5, 0x678(r29)
/* 807655C8  28 05 00 00 */	cmplwi r5, 0
/* 807655CC  41 82 00 18 */	beq lbl_807655E4
/* 807655D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807655D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807655D8  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 807655DC  80 9D 06 B4 */	lwz r4, 0x6b4(r29)
/* 807655E0  4B 8F 09 3D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_807655E4:
/* 807655E4  38 60 00 01 */	li r3, 1
lbl_807655E8:
/* 807655E8  39 61 00 50 */	addi r11, r1, 0x50
/* 807655EC  4B BF CC 35 */	bl _restgpr_27
/* 807655F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807655F4  7C 08 03 A6 */	mtlr r0
/* 807655F8  38 21 00 50 */	addi r1, r1, 0x50
/* 807655FC  4E 80 00 20 */	blr 
