lbl_80D1D578:
/* 80D1D578  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D1D57C  7C 08 02 A6 */	mflr r0
/* 80D1D580  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D1D584  39 61 00 60 */	addi r11, r1, 0x60
/* 80D1D588  4B 64 4C 39 */	bl _savegpr_22
/* 80D1D58C  7C 7A 1B 78 */	mr r26, r3
/* 80D1D590  3C 60 80 D2 */	lis r3, lit_3879@ha /* 0x80D1EE2C@ha */
/* 80D1D594  3B A3 EE 2C */	addi r29, r3, lit_3879@l /* 0x80D1EE2C@l */
/* 80D1D598  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D1D59C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D1D5A0  38 80 00 10 */	li r4, 0x10
/* 80D1D5A4  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80D1D5A8  38 DA 01 0C */	addi r6, r26, 0x10c
/* 80D1D5AC  4B 48 62 19 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D1D5B0  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 80D1D5B4  80 83 00 04 */	lwz r4, 4(r3)
/* 80D1D5B8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D1D5BC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D1D5C0  80 84 00 04 */	lwz r4, 4(r4)
/* 80D1D5C4  38 BA 01 0C */	addi r5, r26, 0x10c
/* 80D1D5C8  4B 48 77 D9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D1D5CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1D5D0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1D5D4  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80D1D5D8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D1D5DC  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D1D5E0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D1D5E4  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80D1D5E8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D1D5EC  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 80D1D5F0  80 63 00 04 */	lwz r3, 4(r3)
/* 80D1D5F4  80 83 00 04 */	lwz r4, 4(r3)
/* 80D1D5F8  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80D1D5FC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D1D600  38 84 00 58 */	addi r4, r4, 0x58
/* 80D1D604  4B 2F 01 A5 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D1D608  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 80D1D60C  4B 2F 30 75 */	bl entryDL__14mDoExt_McaMorfFv
/* 80D1D610  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1D614  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1D618  80 1F 5F 80 */	lwz r0, 0x5f80(r31)
/* 80D1D61C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D1D620  80 1F 5F 84 */	lwz r0, 0x5f84(r31)
/* 80D1D624  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D1D628  A8 1A 05 A8 */	lha r0, 0x5a8(r26)
/* 80D1D62C  2C 00 00 00 */	cmpwi r0, 0
/* 80D1D630  41 82 01 18 */	beq lbl_80D1D748
/* 80D1D634  80 1F 5F 94 */	lwz r0, 0x5f94(r31)
/* 80D1D638  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D1D63C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D1D640  3B 60 00 01 */	li r27, 1
/* 80D1D644  3B 20 00 04 */	li r25, 4
/* 80D1D648  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D1D64C  3B 03 CA 54 */	addi r24, r3, g_env_light@l /* 0x8042CA54@l */
lbl_80D1D650:
/* 80D1D650  7F 9A CA 14 */	add r28, r26, r25
/* 80D1D654  80 7C 05 7C */	lwz r3, 0x57c(r28)
/* 80D1D658  82 C3 00 04 */	lwz r22, 4(r3)
/* 80D1D65C  2C 1B 00 00 */	cmpwi r27, 0
/* 80D1D660  40 82 00 90 */	bne lbl_80D1D6F0
/* 80D1D664  80 76 00 60 */	lwz r3, 0x60(r22)
/* 80D1D668  82 E3 00 00 */	lwz r23, 0(r3)
/* 80D1D66C  80 77 00 28 */	lwz r3, 0x28(r23)
/* 80D1D670  38 80 00 00 */	li r4, 0
/* 80D1D674  81 83 00 00 */	lwz r12, 0(r3)
/* 80D1D678  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80D1D67C  7D 89 03 A6 */	mtctr r12
/* 80D1D680  4E 80 04 21 */	bctrl 
/* 80D1D684  28 03 00 00 */	cmplwi r3, 0
/* 80D1D688  41 82 00 68 */	beq lbl_80D1D6F0
/* 80D1D68C  80 77 00 28 */	lwz r3, 0x28(r23)
/* 80D1D690  38 80 00 00 */	li r4, 0
/* 80D1D694  81 83 00 00 */	lwz r12, 0(r3)
/* 80D1D698  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80D1D69C  7D 89 03 A6 */	mtctr r12
/* 80D1D6A0  4E 80 04 21 */	bctrl 
/* 80D1D6A4  7C 77 1B 79 */	or. r23, r3, r3
/* 80D1D6A8  41 82 00 48 */	beq lbl_80D1D6F0
/* 80D1D6AC  80 9F 61 B0 */	lwz r4, 0x61b0(r31)
/* 80D1D6B0  38 61 00 08 */	addi r3, r1, 8
/* 80D1D6B4  C0 24 00 D0 */	lfs f1, 0xd0(r4)
/* 80D1D6B8  C0 44 00 D4 */	lfs f2, 0xd4(r4)
/* 80D1D6BC  C0 7D 00 00 */	lfs f3, 0(r29)
/* 80D1D6C0  FC 80 18 90 */	fmr f4, f3
/* 80D1D6C4  C0 BD 00 04 */	lfs f5, 4(r29)
/* 80D1D6C8  C0 DD 00 08 */	lfs f6, 8(r29)
/* 80D1D6CC  4B 62 95 4D */	bl C_MTXLightPerspective
/* 80D1D6D0  7E E3 BB 78 */	mr r3, r23
/* 80D1D6D4  38 81 00 08 */	addi r4, r1, 8
/* 80D1D6D8  4B 60 80 BD */	bl setEffectMtx__13J3DTexMtxInfoFPA4_f
/* 80D1D6DC  7E C3 B3 78 */	mr r3, r22
/* 80D1D6E0  38 80 00 00 */	li r4, 0
/* 80D1D6E4  3C A0 80 3A */	lis r5, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 80D1D6E8  38 A5 1E 5C */	addi r5, r5, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 80D1D6EC  4B 60 89 21 */	bl simpleCalcMaterial__12J3DModelDataFUsPA4_f
lbl_80D1D6F0:
/* 80D1D6F0  7F 03 C3 78 */	mr r3, r24
/* 80D1D6F4  80 9C 05 7C */	lwz r4, 0x57c(r28)
/* 80D1D6F8  80 84 00 04 */	lwz r4, 4(r4)
/* 80D1D6FC  38 BA 01 0C */	addi r5, r26, 0x10c
/* 80D1D700  4B 48 76 A1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D1D704  80 7C 05 84 */	lwz r3, 0x584(r28)
/* 80D1D708  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D1D70C  38 96 00 58 */	addi r4, r22, 0x58
/* 80D1D710  4B 2E FF C9 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D1D714  80 7C 05 8C */	lwz r3, 0x58c(r28)
/* 80D1D718  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D1D71C  38 96 00 58 */	addi r4, r22, 0x58
/* 80D1D720  4B 2F 00 89 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D1D724  80 7C 05 7C */	lwz r3, 0x57c(r28)
/* 80D1D728  4B 2F 05 9D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D1D72C  37 7B FF FF */	addic. r27, r27, -1
/* 80D1D730  3B 39 FF FC */	addi r25, r25, -4
/* 80D1D734  40 80 FF 1C */	bge lbl_80D1D650
/* 80D1D738  80 1F 5F 80 */	lwz r0, 0x5f80(r31)
/* 80D1D73C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D1D740  80 1F 5F 84 */	lwz r0, 0x5f84(r31)
/* 80D1D744  90 1E 00 4C */	stw r0, 0x4c(r30)
lbl_80D1D748:
/* 80D1D748  38 60 00 01 */	li r3, 1
/* 80D1D74C  39 61 00 60 */	addi r11, r1, 0x60
/* 80D1D750  4B 64 4A BD */	bl _restgpr_22
/* 80D1D754  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D1D758  7C 08 03 A6 */	mtlr r0
/* 80D1D75C  38 21 00 60 */	addi r1, r1, 0x60
/* 80D1D760  4E 80 00 20 */	blr 
