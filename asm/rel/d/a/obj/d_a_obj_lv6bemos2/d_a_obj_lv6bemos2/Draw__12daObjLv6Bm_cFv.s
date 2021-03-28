lbl_80C81500:
/* 80C81500  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C81504  7C 08 02 A6 */	mflr r0
/* 80C81508  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8150C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C81510  4B 6E 0C CC */	b _savegpr_29
/* 80C81514  7C 7E 1B 78 */	mr r30, r3
/* 80C81518  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C8151C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C81520  38 80 00 10 */	li r4, 0x10
/* 80C81524  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C81528  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C8152C  4B 52 22 98 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C81530  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C81534  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C81538  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C8153C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C81540  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C81544  4B 52 38 5C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C81548  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C8154C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C81550  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C81554  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C81558  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C8155C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C81560  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C81564  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C81568  80 7E 09 E0 */	lwz r3, 0x9e0(r30)
/* 80C8156C  83 A3 00 08 */	lwz r29, 8(r3)
/* 80C81570  88 1E 0A 1B */	lbz r0, 0xa1b(r30)
/* 80C81574  28 00 00 00 */	cmplwi r0, 0
/* 80C81578  40 82 00 10 */	bne lbl_80C81588
/* 80C8157C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80C81580  60 00 00 01 */	ori r0, r0, 1
/* 80C81584  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_80C81588:
/* 80C81588  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8158C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C81590  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80C81594  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C81598  38 84 00 58 */	addi r4, r4, 0x58
/* 80C8159C  4B 38 C2 0C */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C815A0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C815A4  80 83 00 04 */	lwz r4, 4(r3)
/* 80C815A8  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80C815AC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C815B0  4B 38 C4 1C */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C815B4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C815B8  4B 38 C7 0C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C815BC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C815C0  80 63 00 04 */	lwz r3, 4(r3)
/* 80C815C4  4B 38 C8 C8 */	b mDoExt_brkAnmRemove__FP12J3DModelData
/* 80C815C8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C815CC  80 63 00 04 */	lwz r3, 4(r3)
/* 80C815D0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C815D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C815D8  38 00 00 00 */	li r0, 0
/* 80C815DC  90 03 00 54 */	stw r0, 0x54(r3)
/* 80C815E0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80C815E4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C815E8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80C815EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C815F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C815F4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C815F8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C815FC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C81600  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C81604  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C81608  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C8160C  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 80C81610  80 84 00 04 */	lwz r4, 4(r4)
/* 80C81614  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C81618  4B 52 37 88 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C8161C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80C81620  80 83 00 04 */	lwz r4, 4(r3)
/* 80C81624  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80C81628  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C8162C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C81630  4B 38 C0 A8 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C81634  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80C81638  80 83 00 04 */	lwz r4, 4(r3)
/* 80C8163C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80C81640  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C81644  38 84 00 58 */	addi r4, r4, 0x58
/* 80C81648  4B 38 C0 90 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C8164C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80C81650  80 83 00 04 */	lwz r4, 4(r3)
/* 80C81654  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C81658  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C8165C  4B 38 C3 70 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C81660  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80C81664  4B 38 C6 60 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C81668  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80C8166C  80 63 00 04 */	lwz r3, 4(r3)
/* 80C81670  4B 38 C7 80 */	b mDoExt_btkAnmRemove__FP12J3DModelData
/* 80C81674  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80C81678  80 63 00 04 */	lwz r3, 4(r3)
/* 80C8167C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C81680  80 63 00 00 */	lwz r3, 0(r3)
/* 80C81684  38 00 00 00 */	li r0, 0
/* 80C81688  90 03 00 54 */	stw r0, 0x54(r3)
/* 80C8168C  38 60 00 01 */	li r3, 1
/* 80C81690  39 61 00 20 */	addi r11, r1, 0x20
/* 80C81694  4B 6E 0B 94 */	b _restgpr_29
/* 80C81698  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8169C  7C 08 03 A6 */	mtlr r0
/* 80C816A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C816A4  4E 80 00 20 */	blr 
