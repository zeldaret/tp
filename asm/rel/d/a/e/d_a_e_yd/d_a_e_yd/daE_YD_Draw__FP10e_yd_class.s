lbl_807F2FA4:
/* 807F2FA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807F2FA8  7C 08 02 A6 */	mflr r0
/* 807F2FAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 807F2FB0  39 61 00 40 */	addi r11, r1, 0x40
/* 807F2FB4  4B B6 F2 14 */	b _savegpr_24
/* 807F2FB8  7C 7C 1B 78 */	mr r28, r3
/* 807F2FBC  3C 60 80 7F */	lis r3, lit_3788@ha
/* 807F2FC0  3B C3 7A 00 */	addi r30, r3, lit_3788@l
/* 807F2FC4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807F2FC8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807F2FCC  38 80 00 02 */	li r4, 2
/* 807F2FD0  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 807F2FD4  38 DC 01 0C */	addi r6, r28, 0x10c
/* 807F2FD8  4B 9B 07 EC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807F2FDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F2FE0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 807F2FE4  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 807F2FE8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 807F2FEC  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 807F2FF0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 807F2FF4  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 807F2FF8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 807F2FFC  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807F3000  83 A3 00 04 */	lwz r29, 4(r3)
/* 807F3004  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807F3008  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807F300C  80 9D 00 04 */	lwz r4, 4(r29)
/* 807F3010  38 BC 01 0C */	addi r5, r28, 0x10c
/* 807F3014  4B 9B 1D 8C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807F3018  80 9D 00 04 */	lwz r4, 4(r29)
/* 807F301C  80 7C 06 60 */	lwz r3, 0x660(r28)
/* 807F3020  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 807F3024  38 84 00 58 */	addi r4, r4, 0x58
/* 807F3028  4B 81 A7 80 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 807F302C  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807F3030  4B 81 E1 90 */	b entryDL__16mDoExt_McaMorfSOFv
/* 807F3034  38 7C 08 0C */	addi r3, r28, 0x80c
/* 807F3038  38 80 00 0C */	li r4, 0xc
/* 807F303C  3C A0 80 7F */	lis r5, l_color@ha
/* 807F3040  38 A5 7B 70 */	addi r5, r5, l_color@l
/* 807F3044  38 DC 01 0C */	addi r6, r28, 0x10c
/* 807F3048  4B 82 0F 68 */	b update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 807F304C  38 7C 08 0C */	addi r3, r28, 0x80c
/* 807F3050  81 9C 08 0C */	lwz r12, 0x80c(r28)
/* 807F3054  81 8C 00 08 */	lwz r12, 8(r12)
/* 807F3058  7D 89 03 A6 */	mtctr r12
/* 807F305C  4E 80 04 21 */	bctrl 
/* 807F3060  1C 83 00 14 */	mulli r4, r3, 0x14
/* 807F3064  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F3068  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 807F306C  7C 60 22 14 */	add r3, r0, r4
/* 807F3070  3C 63 00 01 */	addis r3, r3, 1
/* 807F3074  38 63 61 54 */	addi r3, r3, 0x6154
/* 807F3078  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 807F307C  38 9C 08 0C */	addi r4, r28, 0x80c
/* 807F3080  4B 82 16 B8 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 807F3084  3B 00 00 01 */	li r24, 1
/* 807F3088  3B 60 00 04 */	li r27, 4
/* 807F308C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807F3090  3B 43 CA 54 */	addi r26, r3, g_env_light@l
lbl_807F3094:
/* 807F3094  3B 3B 07 7C */	addi r25, r27, 0x77c
/* 807F3098  7C 9C C8 2E */	lwzx r4, r28, r25
/* 807F309C  28 04 00 00 */	cmplwi r4, 0
/* 807F30A0  41 82 00 1C */	beq lbl_807F30BC
/* 807F30A4  7F 43 D3 78 */	mr r3, r26
/* 807F30A8  80 84 00 04 */	lwz r4, 4(r4)
/* 807F30AC  38 BC 01 0C */	addi r5, r28, 0x10c
/* 807F30B0  4B 9B 1C F0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807F30B4  7C 7C C8 2E */	lwzx r3, r28, r25
/* 807F30B8  4B 81 AC 0C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_807F30BC:
/* 807F30BC  3B 18 00 01 */	addi r24, r24, 1
/* 807F30C0  2C 18 00 0B */	cmpwi r24, 0xb
/* 807F30C4  3B 7B 00 04 */	addi r27, r27, 4
/* 807F30C8  41 80 FF CC */	blt lbl_807F3094
/* 807F30CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F30D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807F30D4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 807F30D8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 807F30DC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 807F30E0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 807F30E4  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 807F30E8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807F30EC  C0 7C 04 D4 */	lfs f3, 0x4d4(r28)
/* 807F30F0  EC 20 18 2A */	fadds f1, f0, f3
/* 807F30F4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807F30F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 807F30FC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807F3100  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807F3104  80 7C 06 68 */	lwz r3, 0x668(r28)
/* 807F3108  38 80 00 01 */	li r4, 1
/* 807F310C  7F A5 EB 78 */	mr r5, r29
/* 807F3110  38 C1 00 08 */	addi r6, r1, 8
/* 807F3114  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 807F3118  C0 5E 00 04 */	lfs f2, 4(r30)
/* 807F311C  3C E0 80 45 */	lis r7, mGroundY__11fopAcM_gc_c@ha
/* 807F3120  C0 87 0C D0 */	lfs f4, mGroundY__11fopAcM_gc_c@l(r7)
/* 807F3124  3C E0 80 3F */	lis r7, mGndCheck__11fopAcM_gc_c@ha
/* 807F3128  38 E7 1C C4 */	addi r7, r7, mGndCheck__11fopAcM_gc_c@l
/* 807F312C  38 E7 00 14 */	addi r7, r7, 0x14
/* 807F3130  39 1C 01 0C */	addi r8, r28, 0x10c
/* 807F3134  39 20 00 00 */	li r9, 0
/* 807F3138  C0 BE 00 08 */	lfs f5, 8(r30)
/* 807F313C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 807F3140  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 807F3144  4B 83 B7 CC */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807F3148  90 7C 06 68 */	stw r3, 0x668(r28)
/* 807F314C  38 60 00 01 */	li r3, 1
/* 807F3150  39 61 00 40 */	addi r11, r1, 0x40
/* 807F3154  4B B6 F0 C0 */	b _restgpr_24
/* 807F3158  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807F315C  7C 08 03 A6 */	mtlr r0
/* 807F3160  38 21 00 40 */	addi r1, r1, 0x40
/* 807F3164  4E 80 00 20 */	blr 
