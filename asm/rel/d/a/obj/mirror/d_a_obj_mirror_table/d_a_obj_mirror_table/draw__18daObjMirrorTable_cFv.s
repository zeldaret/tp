lbl_80C9A298:
/* 80C9A298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9A29C  7C 08 02 A6 */	mflr r0
/* 80C9A2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9A2A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9A2A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9A2AC  7C 7E 1B 78 */	mr r30, r3
/* 80C9A2B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C9A2B4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C9A2B8  38 80 00 10 */	li r4, 0x10
/* 80C9A2BC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C9A2C0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C9A2C4  4B 50 95 00 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C9A2C8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C9A2CC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C9A2D0  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C9A2D4  80 84 00 04 */	lwz r4, 4(r4)
/* 80C9A2D8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C9A2DC  4B 50 AA C4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C9A2E0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C9A2E4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C9A2E8  80 9E 05 6C */	lwz r4, 0x56c(r30)
/* 80C9A2EC  80 84 00 04 */	lwz r4, 4(r4)
/* 80C9A2F0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C9A2F4  4B 50 AA AC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C9A2F8  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80C9A2FC  28 04 00 00 */	cmplwi r4, 0
/* 80C9A300  41 82 00 18 */	beq lbl_80C9A318
/* 80C9A304  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C9A308  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C9A30C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C9A310  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C9A314  4B 50 AA 8C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_80C9A318:
/* 80C9A318  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C9A31C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9A320  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80C9A324  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C9A328  4B 37 36 A4 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C9A32C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9A330  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C9A334  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C9A338  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C9A33C  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80C9A340  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C9A344  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C9A348  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C9A34C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C9A350  4B 37 39 74 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C9A354  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80C9A358  4B 37 39 6C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C9A35C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C9A360  28 03 00 00 */	cmplwi r3, 0
/* 80C9A364  41 82 00 38 */	beq lbl_80C9A39C
/* 80C9A368  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9A36C  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 80C9A370  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C9A374  38 84 00 58 */	addi r4, r4, 0x58
/* 80C9A378  4B 37 34 30 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C9A37C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C9A380  4B 37 39 44 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C9A384  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C9A388  80 63 00 04 */	lwz r3, 4(r3)
/* 80C9A38C  38 63 00 58 */	addi r3, r3, 0x58
/* 80C9A390  80 9E 05 88 */	lwz r4, 0x588(r30)
/* 80C9A394  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80C9A398  4B 69 54 E8 */	b removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_80C9A39C:
/* 80C9A39C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C9A3A0  28 03 00 00 */	cmplwi r3, 0
/* 80C9A3A4  41 82 00 08 */	beq lbl_80C9A3AC
/* 80C9A3A8  4B 37 39 1C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80C9A3AC:
/* 80C9A3AC  88 1E 08 74 */	lbz r0, 0x874(r30)
/* 80C9A3B0  28 00 00 00 */	cmplwi r0, 0
/* 80C9A3B4  41 82 00 B0 */	beq lbl_80C9A464
/* 80C9A3B8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C9A3BC  28 03 00 00 */	cmplwi r3, 0
/* 80C9A3C0  41 82 00 38 */	beq lbl_80C9A3F8
/* 80C9A3C4  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9A3C8  80 7E 05 90 */	lwz r3, 0x590(r30)
/* 80C9A3CC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C9A3D0  38 84 00 58 */	addi r4, r4, 0x58
/* 80C9A3D4  4B 37 33 04 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C9A3D8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C9A3DC  4B 37 38 E8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C9A3E0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C9A3E4  80 63 00 04 */	lwz r3, 4(r3)
/* 80C9A3E8  38 63 00 58 */	addi r3, r3, 0x58
/* 80C9A3EC  80 9E 05 90 */	lwz r4, 0x590(r30)
/* 80C9A3F0  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80C9A3F4  4B 69 53 C0 */	b removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80C9A3F8:
/* 80C9A3F8  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80C9A3FC  28 03 00 00 */	cmplwi r3, 0
/* 80C9A400  41 82 00 64 */	beq lbl_80C9A464
/* 80C9A404  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9A408  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80C9A40C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C9A410  4B 37 35 BC */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C9A414  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80C9A418  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9A41C  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80C9A420  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C9A424  38 84 00 58 */	addi r4, r4, 0x58
/* 80C9A428  4B 37 33 80 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C9A42C  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80C9A430  4B 37 38 94 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C9A434  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80C9A438  80 63 00 04 */	lwz r3, 4(r3)
/* 80C9A43C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C9A440  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9A444  38 00 00 00 */	li r0, 0
/* 80C9A448  90 03 00 54 */	stw r0, 0x54(r3)
/* 80C9A44C  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80C9A450  80 63 00 04 */	lwz r3, 4(r3)
/* 80C9A454  38 63 00 58 */	addi r3, r3, 0x58
/* 80C9A458  80 9E 05 8C */	lwz r4, 0x58c(r30)
/* 80C9A45C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80C9A460  4B 69 54 20 */	b removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_80C9A464:
/* 80C9A464  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9A468  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9A46C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C9A470  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80C9A474  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C9A478  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80C9A47C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C9A480  80 63 00 04 */	lwz r3, 4(r3)
/* 80C9A484  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C9A488  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9A48C  38 00 00 00 */	li r0, 0
/* 80C9A490  90 03 00 54 */	stw r0, 0x54(r3)
/* 80C9A494  38 60 00 01 */	li r3, 1
/* 80C9A498  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9A49C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9A4A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9A4A4  7C 08 03 A6 */	mtlr r0
/* 80C9A4A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9A4AC  4E 80 00 20 */	blr 
