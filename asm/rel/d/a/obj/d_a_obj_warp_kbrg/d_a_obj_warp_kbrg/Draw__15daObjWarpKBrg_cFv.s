lbl_80D292A0:
/* 80D292A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D292A4  7C 08 02 A6 */	mflr r0
/* 80D292A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D292AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D292B0  4B 63 8F 2C */	b _savegpr_29
/* 80D292B4  7C 7E 1B 78 */	mr r30, r3
/* 80D292B8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D292BC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80D292C0  28 00 00 01 */	cmplwi r0, 1
/* 80D292C4  40 82 00 20 */	bne lbl_80D292E4
/* 80D292C8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D292CC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D292D0  38 80 00 20 */	li r4, 0x20
/* 80D292D4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D292D8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D292DC  4B 47 A4 E8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D292E0  48 00 00 1C */	b lbl_80D292FC
lbl_80D292E4:
/* 80D292E4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D292E8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D292EC  38 80 00 10 */	li r4, 0x10
/* 80D292F0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D292F4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D292F8  4B 47 A4 CC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_80D292FC:
/* 80D292FC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D29300  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D29304  80 9E 05 B0 */	lwz r4, 0x5b0(r30)
/* 80D29308  80 84 00 04 */	lwz r4, 4(r4)
/* 80D2930C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D29310  4B 47 BA 90 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D29314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D29318  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D2931C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D29320  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D29324  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80D29328  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D2932C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D29330  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D29334  88 1E 05 C8 */	lbz r0, 0x5c8(r30)
/* 80D29338  28 00 00 00 */	cmplwi r0, 0
/* 80D2933C  41 82 00 20 */	beq lbl_80D2935C
/* 80D29340  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80D29344  28 03 00 00 */	cmplwi r3, 0
/* 80D29348  41 82 00 14 */	beq lbl_80D2935C
/* 80D2934C  80 9E 05 B0 */	lwz r4, 0x5b0(r30)
/* 80D29350  80 84 00 04 */	lwz r4, 4(r4)
/* 80D29354  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D29358  4B 2E 46 74 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80D2935C:
/* 80D2935C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80D29360  28 03 00 00 */	cmplwi r3, 0
/* 80D29364  41 82 00 18 */	beq lbl_80D2937C
/* 80D29368  80 9E 05 B0 */	lwz r4, 0x5b0(r30)
/* 80D2936C  80 84 00 04 */	lwz r4, 4(r4)
/* 80D29370  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D29374  38 84 00 58 */	addi r4, r4, 0x58
/* 80D29378  4B 2E 43 60 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80D2937C:
/* 80D2937C  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80D29380  4B 2E 49 44 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D29384  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80D29388  80 63 00 04 */	lwz r3, 4(r3)
/* 80D2938C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80D29390  80 63 00 00 */	lwz r3, 0(r3)
/* 80D29394  38 00 00 00 */	li r0, 0
/* 80D29398  90 03 00 54 */	stw r0, 0x54(r3)
/* 80D2939C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D293A0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80D293A4  80 1D 5F 80 */	lwz r0, 0x5f80(r29)
/* 80D293A8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D293AC  80 1D 5F 84 */	lwz r0, 0x5f84(r29)
/* 80D293B0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D293B4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80D293B8  28 03 00 00 */	cmplwi r3, 0
/* 80D293BC  41 82 00 70 */	beq lbl_80D2942C
/* 80D293C0  80 1D 5F 88 */	lwz r0, 0x5f88(r29)
/* 80D293C4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D293C8  80 1D 5F 8C */	lwz r0, 0x5f8c(r29)
/* 80D293CC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D293D0  80 83 00 04 */	lwz r4, 4(r3)
/* 80D293D4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80D293D8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D293DC  38 84 00 58 */	addi r4, r4, 0x58
/* 80D293E0  4B 2E 42 F8 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D293E4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80D293E8  80 83 00 04 */	lwz r4, 4(r3)
/* 80D293EC  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 80D293F0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D293F4  38 84 00 58 */	addi r4, r4, 0x58
/* 80D293F8  4B 2E 43 B0 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D293FC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80D29400  4B 2E 48 C4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D29404  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80D29408  80 63 00 04 */	lwz r3, 4(r3)
/* 80D2940C  4B 2E 4A 80 */	b mDoExt_brkAnmRemove__FP12J3DModelData
/* 80D29410  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80D29414  80 63 00 04 */	lwz r3, 4(r3)
/* 80D29418  4B 2E 49 D8 */	b mDoExt_btkAnmRemove__FP12J3DModelData
/* 80D2941C  80 1D 5F 80 */	lwz r0, 0x5f80(r29)
/* 80D29420  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D29424  80 1D 5F 84 */	lwz r0, 0x5f84(r29)
/* 80D29428  90 1F 00 4C */	stw r0, 0x4c(r31)
lbl_80D2942C:
/* 80D2942C  38 60 00 01 */	li r3, 1
/* 80D29430  39 61 00 20 */	addi r11, r1, 0x20
/* 80D29434  4B 63 8D F4 */	b _restgpr_29
/* 80D29438  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2943C  7C 08 03 A6 */	mtlr r0
/* 80D29440  38 21 00 20 */	addi r1, r1, 0x20
/* 80D29444  4E 80 00 20 */	blr 
