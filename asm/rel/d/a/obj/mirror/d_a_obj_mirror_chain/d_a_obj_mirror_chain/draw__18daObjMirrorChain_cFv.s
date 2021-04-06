lbl_80C976B8:
/* 80C976B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C976BC  7C 08 02 A6 */	mflr r0
/* 80C976C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C976C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C976C8  4B 6C AB 15 */	bl _savegpr_29
/* 80C976CC  7C 7F 1B 78 */	mr r31, r3
/* 80C976D0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C976D4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C976D8  38 80 00 10 */	li r4, 0x10
/* 80C976DC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C976E0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C976E4  4B 50 C0 E1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C976E8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C976EC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C976F0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C976F4  80 84 00 04 */	lwz r4, 4(r4)
/* 80C976F8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C976FC  4B 50 D6 A5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C97700  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C97704  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C97708  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C9770C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C97710  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C97714  A0 84 02 C4 */	lhz r4, 0x2c4(r4)
/* 80C97718  4B 39 D2 A5 */	bl isEventBit__11dSv_event_cCFUs
/* 80C9771C  2C 03 00 00 */	cmpwi r3, 0
/* 80C97720  41 82 01 6C */	beq lbl_80C9788C
/* 80C97724  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C97728  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C9772C  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 80C97730  80 84 00 04 */	lwz r4, 4(r4)
/* 80C97734  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C97738  4B 50 D6 69 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C9773C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C97740  28 03 00 00 */	cmplwi r3, 0
/* 80C97744  41 82 00 14 */	beq lbl_80C97758
/* 80C97748  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 80C9774C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C97750  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C97754  4B 37 62 79 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80C97758:
/* 80C97758  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C9775C  28 03 00 00 */	cmplwi r3, 0
/* 80C97760  41 82 00 18 */	beq lbl_80C97778
/* 80C97764  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C97768  80 84 00 04 */	lwz r4, 4(r4)
/* 80C9776C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C97770  38 84 00 58 */	addi r4, r4, 0x58
/* 80C97774  4B 37 60 35 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_80C97778:
/* 80C97778  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80C9777C  28 03 00 00 */	cmplwi r3, 0
/* 80C97780  41 82 00 18 */	beq lbl_80C97798
/* 80C97784  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 80C97788  80 84 00 04 */	lwz r4, 4(r4)
/* 80C9778C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C97790  38 84 00 58 */	addi r4, r4, 0x58
/* 80C97794  4B 37 60 15 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_80C97798:
/* 80C97798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9779C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C977A0  80 1D 5F 70 */	lwz r0, 0x5f70(r29)
/* 80C977A4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C977A8  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C977AC  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C977B0  80 1D 5F 74 */	lwz r0, 0x5f74(r29)
/* 80C977B4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C977B8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C977BC  4B 37 65 09 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C977C0  38 BF 07 4C */	addi r5, r31, 0x74c
/* 80C977C4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C977C8  38 63 00 24 */	addi r3, r3, 0x24
/* 80C977CC  3C 80 80 CA */	lis r4, data_80C98084@ha /* 0x80C98084@ha */
/* 80C977D0  38 84 80 84 */	addi r4, r4, data_80C98084@l /* 0x80C98084@l */
/* 80C977D4  38 C0 00 04 */	li r6, 4
/* 80C977D8  4B 6A F5 E9 */	bl PSMTXMultVecArray
/* 80C977DC  80 1D 5F 74 */	lwz r0, 0x5f74(r29)
/* 80C977E0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C977E4  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 80C977E8  38 9F 07 7C */	addi r4, r31, 0x77c
/* 80C977EC  38 A0 00 00 */	li r5, 0
/* 80C977F0  4B 68 DC 9D */	bl entryImm__13J3DDrawBufferFP9J3DPacketUs
/* 80C977F4  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80C977F8  4B 37 64 CD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C977FC  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 80C97800  38 9F 07 3C */	addi r4, r31, 0x73c
/* 80C97804  38 A0 00 00 */	li r5, 0
/* 80C97808  4B 68 DC 85 */	bl entryImm__13J3DDrawBufferFP9J3DPacketUs
/* 80C9780C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C97810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C97814  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C97818  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C9781C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C97820  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C97824  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80C97828  28 00 00 00 */	cmplwi r0, 0
/* 80C9782C  41 82 00 1C */	beq lbl_80C97848
/* 80C97830  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80C97834  80 63 00 04 */	lwz r3, 4(r3)
/* 80C97838  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C9783C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C97840  38 00 00 00 */	li r0, 0
/* 80C97844  90 03 00 54 */	stw r0, 0x54(r3)
lbl_80C97848:
/* 80C97848  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C9784C  28 04 00 00 */	cmplwi r4, 0
/* 80C97850  41 82 00 18 */	beq lbl_80C97868
/* 80C97854  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C97858  80 63 00 04 */	lwz r3, 4(r3)
/* 80C9785C  38 63 00 58 */	addi r3, r3, 0x58
/* 80C97860  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80C97864  4B 69 80 1D */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_80C97868:
/* 80C97868  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80C9786C  28 04 00 00 */	cmplwi r4, 0
/* 80C97870  41 82 00 DC */	beq lbl_80C9794C
/* 80C97874  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80C97878  80 63 00 04 */	lwz r3, 4(r3)
/* 80C9787C  38 63 00 58 */	addi r3, r3, 0x58
/* 80C97880  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80C97884  4B 69 7F FD */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80C97888  48 00 00 C4 */	b lbl_80C9794C
lbl_80C9788C:
/* 80C9788C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C97890  28 03 00 00 */	cmplwi r3, 0
/* 80C97894  41 82 00 14 */	beq lbl_80C978A8
/* 80C97898  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C9789C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C978A0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C978A4  4B 37 61 29 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80C978A8:
/* 80C978A8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C978AC  28 03 00 00 */	cmplwi r3, 0
/* 80C978B0  41 82 00 18 */	beq lbl_80C978C8
/* 80C978B4  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C978B8  80 84 00 04 */	lwz r4, 4(r4)
/* 80C978BC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C978C0  38 84 00 58 */	addi r4, r4, 0x58
/* 80C978C4  4B 37 5E E5 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_80C978C8:
/* 80C978C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C978CC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C978D0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C978D4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C978D8  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C978DC  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C978E0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C978E4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C978E8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C978EC  4B 37 63 D9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C978F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C978F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C978F8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C978FC  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C97900  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C97904  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C97908  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80C9790C  28 00 00 00 */	cmplwi r0, 0
/* 80C97910  41 82 00 1C */	beq lbl_80C9792C
/* 80C97914  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C97918  80 63 00 04 */	lwz r3, 4(r3)
/* 80C9791C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C97920  80 63 00 00 */	lwz r3, 0(r3)
/* 80C97924  38 00 00 00 */	li r0, 0
/* 80C97928  90 03 00 54 */	stw r0, 0x54(r3)
lbl_80C9792C:
/* 80C9792C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C97930  28 04 00 00 */	cmplwi r4, 0
/* 80C97934  41 82 00 18 */	beq lbl_80C9794C
/* 80C97938  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C9793C  80 63 00 04 */	lwz r3, 4(r3)
/* 80C97940  38 63 00 58 */	addi r3, r3, 0x58
/* 80C97944  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80C97948  4B 69 7F 39 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_80C9794C:
/* 80C9794C  38 60 00 01 */	li r3, 1
/* 80C97950  39 61 00 20 */	addi r11, r1, 0x20
/* 80C97954  4B 6C A8 D5 */	bl _restgpr_29
/* 80C97958  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9795C  7C 08 03 A6 */	mtlr r0
/* 80C97960  38 21 00 20 */	addi r1, r1, 0x20
/* 80C97964  4E 80 00 20 */	blr 
