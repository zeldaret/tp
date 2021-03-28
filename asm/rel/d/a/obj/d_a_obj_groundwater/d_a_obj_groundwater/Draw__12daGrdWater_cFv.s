lbl_80C14554:
/* 80C14554  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C14558  7C 08 02 A6 */	mflr r0
/* 80C1455C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C14560  39 61 00 60 */	addi r11, r1, 0x60
/* 80C14564  4B 74 DC 68 */	b _savegpr_25
/* 80C14568  7C 7B 1B 78 */	mr r27, r3
/* 80C1456C  3C 60 80 C1 */	lis r3, lit_3642@ha
/* 80C14570  3B A3 49 E0 */	addi r29, r3, lit_3642@l
/* 80C14574  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C14578  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C1457C  38 80 00 10 */	li r4, 0x10
/* 80C14580  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80C14584  38 DB 01 0C */	addi r6, r27, 0x10c
/* 80C14588  4B 58 F2 3C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C1458C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C14590  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C14594  80 9B 05 AC */	lwz r4, 0x5ac(r27)
/* 80C14598  80 84 00 04 */	lwz r4, 4(r4)
/* 80C1459C  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80C145A0  4B 59 08 00 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C145A4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C145A8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C145AC  80 9B 05 A8 */	lwz r4, 0x5a8(r27)
/* 80C145B0  80 84 00 04 */	lwz r4, 4(r4)
/* 80C145B4  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80C145B8  4B 59 07 E8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C145BC  80 7B 05 A8 */	lwz r3, 0x5a8(r27)
/* 80C145C0  4B 59 87 64 */	b dKy_bg_MAxx_proc__FPv
/* 80C145C4  80 7B 05 AC */	lwz r3, 0x5ac(r27)
/* 80C145C8  4B 59 87 5C */	b dKy_bg_MAxx_proc__FPv
/* 80C145CC  80 7B 05 AC */	lwz r3, 0x5ac(r27)
/* 80C145D0  83 83 00 04 */	lwz r28, 4(r3)
/* 80C145D4  C0 3B 05 C0 */	lfs f1, 0x5c0(r27)
/* 80C145D8  38 7B 05 B0 */	addi r3, r27, 0x5b0
/* 80C145DC  38 9C 00 58 */	addi r4, r28, 0x58
/* 80C145E0  4B 3F 90 F8 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C145E4  80 7B 05 A8 */	lwz r3, 0x5a8(r27)
/* 80C145E8  83 23 00 04 */	lwz r25, 4(r3)
/* 80C145EC  C0 3B 05 D8 */	lfs f1, 0x5d8(r27)
/* 80C145F0  38 7B 05 C8 */	addi r3, r27, 0x5c8
/* 80C145F4  38 99 00 58 */	addi r4, r25, 0x58
/* 80C145F8  4B 3F 90 E0 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C145FC  88 1B 06 F2 */	lbz r0, 0x6f2(r27)
/* 80C14600  2C 00 00 03 */	cmpwi r0, 3
/* 80C14604  41 82 00 7C */	beq lbl_80C14680
/* 80C14608  40 80 00 14 */	bge lbl_80C1461C
/* 80C1460C  2C 00 00 01 */	cmpwi r0, 1
/* 80C14610  41 82 00 18 */	beq lbl_80C14628
/* 80C14614  40 80 00 48 */	bge lbl_80C1465C
/* 80C14618  48 00 00 BC */	b lbl_80C146D4
lbl_80C1461C:
/* 80C1461C  2C 00 00 05 */	cmpwi r0, 5
/* 80C14620  40 80 00 B4 */	bge lbl_80C146D4
/* 80C14624  48 00 00 90 */	b lbl_80C146B4
lbl_80C14628:
/* 80C14628  38 7B 06 10 */	addi r3, r27, 0x610
/* 80C1462C  7F 24 CB 78 */	mr r4, r25
/* 80C14630  C0 3B 06 20 */	lfs f1, 0x620(r27)
/* 80C14634  4B 3F 93 98 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C14638  C0 3B 05 F0 */	lfs f1, 0x5f0(r27)
/* 80C1463C  38 7B 05 E0 */	addi r3, r27, 0x5e0
/* 80C14640  38 99 00 58 */	addi r4, r25, 0x58
/* 80C14644  4B 3F 91 64 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C14648  38 7B 06 80 */	addi r3, r27, 0x680
/* 80C1464C  7F 84 E3 78 */	mr r4, r28
/* 80C14650  C0 3B 06 90 */	lfs f1, 0x690(r27)
/* 80C14654  4B 3F 93 78 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C14658  48 00 00 7C */	b lbl_80C146D4
lbl_80C1465C:
/* 80C1465C  38 7B 06 2C */	addi r3, r27, 0x62c
/* 80C14660  7F 24 CB 78 */	mr r4, r25
/* 80C14664  C0 3B 06 3C */	lfs f1, 0x63c(r27)
/* 80C14668  4B 3F 93 64 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C1466C  38 7B 06 9C */	addi r3, r27, 0x69c
/* 80C14670  7F 84 E3 78 */	mr r4, r28
/* 80C14674  C0 3B 06 AC */	lfs f1, 0x6ac(r27)
/* 80C14678  4B 3F 93 54 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C1467C  48 00 00 58 */	b lbl_80C146D4
lbl_80C14680:
/* 80C14680  38 7B 06 48 */	addi r3, r27, 0x648
/* 80C14684  7F 24 CB 78 */	mr r4, r25
/* 80C14688  C0 3B 06 58 */	lfs f1, 0x658(r27)
/* 80C1468C  4B 3F 93 40 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C14690  C0 3B 06 08 */	lfs f1, 0x608(r27)
/* 80C14694  38 7B 05 F8 */	addi r3, r27, 0x5f8
/* 80C14698  38 99 00 58 */	addi r4, r25, 0x58
/* 80C1469C  4B 3F 91 0C */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C146A0  38 7B 06 B8 */	addi r3, r27, 0x6b8
/* 80C146A4  7F 84 E3 78 */	mr r4, r28
/* 80C146A8  C0 3B 06 C8 */	lfs f1, 0x6c8(r27)
/* 80C146AC  4B 3F 93 20 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C146B0  48 00 00 24 */	b lbl_80C146D4
lbl_80C146B4:
/* 80C146B4  38 7B 06 64 */	addi r3, r27, 0x664
/* 80C146B8  7F 24 CB 78 */	mr r4, r25
/* 80C146BC  C0 3B 06 74 */	lfs f1, 0x674(r27)
/* 80C146C0  4B 3F 93 0C */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C146C4  38 7B 06 D4 */	addi r3, r27, 0x6d4
/* 80C146C8  7F 84 E3 78 */	mr r4, r28
/* 80C146CC  C0 3B 06 E4 */	lfs f1, 0x6e4(r27)
/* 80C146D0  4B 3F 92 FC */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80C146D4:
/* 80C146D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C146D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C146DC  80 03 5F 7C */	lwz r0, 0x5f7c(r3)
/* 80C146E0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C146E4  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 80C146E8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C146EC  80 7B 05 A8 */	lwz r3, 0x5a8(r27)
/* 80C146F0  4B 3F 95 D4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C146F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C146F8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80C146FC  80 1F 5F 80 */	lwz r0, 0x5f80(r31)
/* 80C14700  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C14704  3B 43 4A C8 */	addi r26, r3, j3dSys@l
/* 80C14708  90 1A 00 48 */	stw r0, 0x48(r26)
/* 80C1470C  80 1F 5F 84 */	lwz r0, 0x5f84(r31)
/* 80C14710  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C14714  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 80C14718  83 23 00 00 */	lwz r25, 0(r3)
/* 80C1471C  80 1F 5F A0 */	lwz r0, 0x5fa0(r31)
/* 80C14720  90 1A 00 48 */	stw r0, 0x48(r26)
/* 80C14724  80 1F 5F A4 */	lwz r0, 0x5fa4(r31)
/* 80C14728  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C1472C  80 79 00 28 */	lwz r3, 0x28(r25)
/* 80C14730  38 80 00 00 */	li r4, 0
/* 80C14734  81 83 00 00 */	lwz r12, 0(r3)
/* 80C14738  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C1473C  7D 89 03 A6 */	mtctr r12
/* 80C14740  4E 80 04 21 */	bctrl 
/* 80C14744  28 03 00 00 */	cmplwi r3, 0
/* 80C14748  41 82 00 70 */	beq lbl_80C147B8
/* 80C1474C  80 79 00 28 */	lwz r3, 0x28(r25)
/* 80C14750  38 80 00 00 */	li r4, 0
/* 80C14754  81 83 00 00 */	lwz r12, 0(r3)
/* 80C14758  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C1475C  7D 89 03 A6 */	mtctr r12
/* 80C14760  4E 80 04 21 */	bctrl 
/* 80C14764  7C 79 1B 79 */	or. r25, r3, r3
/* 80C14768  41 82 00 50 */	beq lbl_80C147B8
/* 80C1476C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C14770  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C14774  80 83 61 B0 */	lwz r4, 0x61b0(r3)
/* 80C14778  38 61 00 08 */	addi r3, r1, 8
/* 80C1477C  C0 24 00 D0 */	lfs f1, 0xd0(r4)
/* 80C14780  C0 44 00 D4 */	lfs f2, 0xd4(r4)
/* 80C14784  C0 7D 00 04 */	lfs f3, 4(r29)
/* 80C14788  FC 80 18 90 */	fmr f4, f3
/* 80C1478C  C0 BD 00 10 */	lfs f5, 0x10(r29)
/* 80C14790  C0 DD 00 00 */	lfs f6, 0(r29)
/* 80C14794  4B 73 24 84 */	b C_MTXLightPerspective
/* 80C14798  7F 23 CB 78 */	mr r3, r25
/* 80C1479C  38 81 00 08 */	addi r4, r1, 8
/* 80C147A0  4B 71 0F F4 */	b setEffectMtx__13J3DTexMtxInfoFPA4_f
/* 80C147A4  7F 83 E3 78 */	mr r3, r28
/* 80C147A8  38 80 00 00 */	li r4, 0
/* 80C147AC  3C A0 80 3A */	lis r5, j3dDefaultMtx@ha
/* 80C147B0  38 A5 1E 5C */	addi r5, r5, j3dDefaultMtx@l
/* 80C147B4  4B 71 18 58 */	b simpleCalcMaterial__12J3DModelDataFUsPA4_f
lbl_80C147B8:
/* 80C147B8  80 7B 05 AC */	lwz r3, 0x5ac(r27)
/* 80C147BC  4B 3F 95 08 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C147C0  80 1F 5F 80 */	lwz r0, 0x5f80(r31)
/* 80C147C4  90 1A 00 48 */	stw r0, 0x48(r26)
/* 80C147C8  80 1F 5F 84 */	lwz r0, 0x5f84(r31)
/* 80C147CC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C147D0  38 60 00 01 */	li r3, 1
/* 80C147D4  39 61 00 60 */	addi r11, r1, 0x60
/* 80C147D8  4B 74 DA 40 */	b _restgpr_25
/* 80C147DC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C147E0  7C 08 03 A6 */	mtlr r0
/* 80C147E4  38 21 00 60 */	addi r1, r1, 0x60
/* 80C147E8  4E 80 00 20 */	blr 
