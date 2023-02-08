lbl_80C89C10:
/* 80C89C10  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C89C14  7C 08 02 A6 */	mflr r0
/* 80C89C18  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C89C1C  39 61 00 50 */	addi r11, r1, 0x50
/* 80C89C20  4B 6D 85 B1 */	bl _savegpr_26
/* 80C89C24  7C 7E 1B 78 */	mr r30, r3
/* 80C89C28  3C 60 80 C9 */	lis r3, lit_3627@ha /* 0x80C89F60@ha */
/* 80C89C2C  3B 63 9F 60 */	addi r27, r3, lit_3627@l /* 0x80C89F60@l */
/* 80C89C30  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C89C34  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C89C38  38 80 00 10 */	li r4, 0x10
/* 80C89C3C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C89C40  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C89C44  4B 51 9B 81 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C89C48  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C89C4C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C89C50  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80C89C54  80 84 00 04 */	lwz r4, 4(r4)
/* 80C89C58  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C89C5C  4B 51 B1 45 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C89C60  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C89C64  83 43 00 04 */	lwz r26, 4(r3)
/* 80C89C68  80 7A 00 60 */	lwz r3, 0x60(r26)
/* 80C89C6C  83 E3 00 00 */	lwz r31, 0(r3)
/* 80C89C70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C89C74  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C89C78  80 04 5F 78 */	lwz r0, 0x5f78(r4)
/* 80C89C7C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C89C80  3B 83 4A C8 */	addi r28, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C89C84  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80C89C88  80 04 5F 7C */	lwz r0, 0x5f7c(r4)
/* 80C89C8C  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80C89C90  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80C89C94  38 80 00 01 */	li r4, 1
/* 80C89C98  81 83 00 00 */	lwz r12, 0(r3)
/* 80C89C9C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C89CA0  7D 89 03 A6 */	mtctr r12
/* 80C89CA4  4E 80 04 21 */	bctrl 
/* 80C89CA8  28 03 00 00 */	cmplwi r3, 0
/* 80C89CAC  41 82 00 8C */	beq lbl_80C89D38
/* 80C89CB0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80C89CB4  38 80 00 01 */	li r4, 1
/* 80C89CB8  81 83 00 00 */	lwz r12, 0(r3)
/* 80C89CBC  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C89CC0  7D 89 03 A6 */	mtctr r12
/* 80C89CC4  4E 80 04 21 */	bctrl 
/* 80C89CC8  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C89CCC  41 82 00 6C */	beq lbl_80C89D38
/* 80C89CD0  38 61 00 08 */	addi r3, r1, 8
/* 80C89CD4  C0 3B 00 48 */	lfs f1, 0x48(r27)
/* 80C89CD8  C0 5B 00 98 */	lfs f2, 0x98(r27)
/* 80C89CDC  FC 60 10 90 */	fmr f3, f2
/* 80C89CE0  FC 80 08 90 */	fmr f4, f1
/* 80C89CE4  C0 BB 00 44 */	lfs f5, 0x44(r27)
/* 80C89CE8  FC C0 28 90 */	fmr f6, f5
/* 80C89CEC  C0 FB 00 50 */	lfs f7, 0x50(r27)
/* 80C89CF0  FD 00 38 90 */	fmr f8, f7
/* 80C89CF4  4B 6B CF F1 */	bl C_MTXLightOrtho
/* 80C89CF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C89CFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C89D00  38 80 40 00 */	li r4, 0x4000
/* 80C89D04  4B 38 26 41 */	bl mDoMtx_XrotS__FPA4_fs
/* 80C89D08  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C89D0C  FC 20 00 50 */	fneg f1, f0
/* 80C89D10  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C89D14  FC 40 00 50 */	fneg f2, f0
/* 80C89D18  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C89D1C  FC 60 00 50 */	fneg f3, f0
/* 80C89D20  4B 38 30 7D */	bl transM__14mDoMtx_stack_cFfff
/* 80C89D24  38 61 00 08 */	addi r3, r1, 8
/* 80C89D28  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C89D2C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C89D30  38 BD 00 24 */	addi r5, r29, 0x24
/* 80C89D34  4B 6B C7 B1 */	bl PSMTXConcat
lbl_80C89D38:
/* 80C89D38  C0 3E 05 BC */	lfs f1, 0x5bc(r30)
/* 80C89D3C  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80C89D40  38 9A 00 58 */	addi r4, r26, 0x58
/* 80C89D44  4B 38 39 95 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C89D48  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C89D4C  4B 38 3F 79 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C89D50  38 7A 00 58 */	addi r3, r26, 0x58
/* 80C89D54  80 9E 05 C0 */	lwz r4, 0x5c0(r30)
/* 80C89D58  4B 6A 5A 5D */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80C89D5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C89D60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C89D64  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C89D68  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80C89D6C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C89D70  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80C89D74  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80C89D78  38 80 00 01 */	li r4, 1
/* 80C89D7C  81 83 00 00 */	lwz r12, 0(r3)
/* 80C89D80  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80C89D84  7D 89 03 A6 */	mtctr r12
/* 80C89D88  4E 80 04 21 */	bctrl 
/* 80C89D8C  3C 80 80 C9 */	lis r4, l_HIO@ha /* 0x80C8A1F4@ha */
/* 80C89D90  38 84 A1 F4 */	addi r4, r4, l_HIO@l /* 0x80C8A1F4@l */
/* 80C89D94  88 04 00 07 */	lbz r0, 7(r4)
/* 80C89D98  98 03 00 00 */	stb r0, 0(r3)
/* 80C89D9C  88 04 00 08 */	lbz r0, 8(r4)
/* 80C89DA0  98 03 00 01 */	stb r0, 1(r3)
/* 80C89DA4  88 04 00 09 */	lbz r0, 9(r4)
/* 80C89DA8  98 03 00 02 */	stb r0, 2(r3)
/* 80C89DAC  38 60 00 01 */	li r3, 1
/* 80C89DB0  39 61 00 50 */	addi r11, r1, 0x50
/* 80C89DB4  4B 6D 84 69 */	bl _restgpr_26
/* 80C89DB8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C89DBC  7C 08 03 A6 */	mtlr r0
/* 80C89DC0  38 21 00 50 */	addi r1, r1, 0x50
/* 80C89DC4  4E 80 00 20 */	blr 
