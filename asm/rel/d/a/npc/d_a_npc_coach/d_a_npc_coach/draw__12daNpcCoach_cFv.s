lbl_809A2EB8:
/* 809A2EB8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809A2EBC  7C 08 02 A6 */	mflr r0
/* 809A2EC0  90 01 00 44 */	stw r0, 0x44(r1)
/* 809A2EC4  39 61 00 40 */	addi r11, r1, 0x40
/* 809A2EC8  4B 9B F3 0C */	b _savegpr_27
/* 809A2ECC  7C 7F 1B 78 */	mr r31, r3
/* 809A2ED0  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha
/* 809A2ED4  3B C3 4E D0 */	addi r30, r3, M_attr__12daNpcCoach_c@l
/* 809A2ED8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809A2EDC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809A2EE0  38 80 00 00 */	li r4, 0
/* 809A2EE4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 809A2EE8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 809A2EEC  4B 80 08 D8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 809A2EF0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A2EF4  80 83 00 04 */	lwz r4, 4(r3)
/* 809A2EF8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809A2EFC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809A2F00  80 84 00 04 */	lwz r4, 4(r4)
/* 809A2F04  38 BF 01 0C */	addi r5, r31, 0x10c
/* 809A2F08  4B 80 1E 98 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809A2F0C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A2F10  80 63 00 04 */	lwz r3, 4(r3)
/* 809A2F14  80 83 00 04 */	lwz r4, 4(r3)
/* 809A2F18  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 809A2F1C  38 84 00 58 */	addi r4, r4, 0x58
/* 809A2F20  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 809A2F24  FC 00 00 1E */	fctiwz f0, f0
/* 809A2F28  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 809A2F2C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 809A2F30  4B 66 A6 B8 */	b entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 809A2F34  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A2F38  4B 66 F2 0C */	b entryDL__15mDoExt_McaMorf2Fv
/* 809A2F3C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A2F40  80 63 00 04 */	lwz r3, 4(r3)
/* 809A2F44  80 63 00 04 */	lwz r3, 4(r3)
/* 809A2F48  38 63 00 58 */	addi r3, r3, 0x58
/* 809A2F4C  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 809A2F50  80 84 00 14 */	lwz r4, 0x14(r4)
/* 809A2F54  4B 98 C7 A4 */	b removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
/* 809A2F58  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 809A2F5C  C0 3E 02 18 */	lfs f1, 0x218(r30)
/* 809A2F60  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809A2F64  EC 21 00 2A */	fadds f1, f1, f0
/* 809A2F68  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809A2F6C  D0 01 00 08 */	stfs f0, 8(r1)
/* 809A2F70  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809A2F74  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 809A2F78  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809A2F7C  D0 1F 04 44 */	stfs f0, 0x444(r31)
/* 809A2F80  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809A2F84  D0 1F 04 48 */	stfs f0, 0x448(r31)
/* 809A2F88  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809A2F8C  D0 1F 04 4C */	stfs f0, 0x44c(r31)
/* 809A2F90  C0 1F 04 48 */	lfs f0, 0x448(r31)
/* 809A2F94  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 809A2F98  EC 00 08 2A */	fadds f0, f0, f1
/* 809A2F9C  D0 1F 04 48 */	stfs f0, 0x448(r31)
/* 809A2FA0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809A2FA4  80 A3 00 04 */	lwz r5, 4(r3)
/* 809A2FA8  80 7F 0C FC */	lwz r3, 0xcfc(r31)
/* 809A2FAC  38 80 00 00 */	li r4, 0
/* 809A2FB0  38 C1 00 08 */	addi r6, r1, 8
/* 809A2FB4  C0 5E 02 20 */	lfs f2, 0x220(r30)
/* 809A2FB8  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 809A2FBC  C0 9F 06 0C */	lfs f4, 0x60c(r31)
/* 809A2FC0  38 FF 06 64 */	addi r7, r31, 0x664
/* 809A2FC4  39 1F 01 0C */	addi r8, r31, 0x10c
/* 809A2FC8  39 20 00 00 */	li r9, 0
/* 809A2FCC  C0 BE 01 5C */	lfs f5, 0x15c(r30)
/* 809A2FD0  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 809A2FD4  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 809A2FD8  4B 68 B9 38 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 809A2FDC  90 7F 0C FC */	stw r3, 0xcfc(r31)
/* 809A2FE0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809A2FE4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809A2FE8  38 80 00 00 */	li r4, 0
/* 809A2FEC  38 BF 15 5C */	addi r5, r31, 0x155c
/* 809A2FF0  38 DF 0E 80 */	addi r6, r31, 0xe80
/* 809A2FF4  4B 80 07 D0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 809A2FF8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809A2FFC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809A3000  80 9F 0E 7C */	lwz r4, 0xe7c(r31)
/* 809A3004  80 84 00 04 */	lwz r4, 4(r4)
/* 809A3008  38 BF 0E 80 */	addi r5, r31, 0xe80
/* 809A300C  4B 80 1D 94 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809A3010  80 7F 0E 7C */	lwz r3, 0xe7c(r31)
/* 809A3014  4B 66 AC B0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 809A3018  C0 7F 15 64 */	lfs f3, 0x1564(r31)
/* 809A301C  C0 5E 02 20 */	lfs f2, 0x220(r30)
/* 809A3020  C0 1F 15 60 */	lfs f0, 0x1560(r31)
/* 809A3024  EC 22 00 2A */	fadds f1, f2, f0
/* 809A3028  C0 1F 15 5C */	lfs f0, 0x155c(r31)
/* 809A302C  D0 01 00 08 */	stfs f0, 8(r1)
/* 809A3030  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809A3034  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 809A3038  C0 1F 15 5C */	lfs f0, 0x155c(r31)
/* 809A303C  D0 1F 11 B8 */	stfs f0, 0x11b8(r31)
/* 809A3040  C0 1F 15 60 */	lfs f0, 0x1560(r31)
/* 809A3044  D0 1F 11 BC */	stfs f0, 0x11bc(r31)
/* 809A3048  C0 1F 15 64 */	lfs f0, 0x1564(r31)
/* 809A304C  D0 1F 11 C0 */	stfs f0, 0x11c0(r31)
/* 809A3050  C0 3F 11 BC */	lfs f1, 0x11bc(r31)
/* 809A3054  C0 1E 02 1C */	lfs f0, 0x21c(r30)
/* 809A3058  EC 01 00 2A */	fadds f0, f1, f0
/* 809A305C  D0 1F 11 BC */	stfs f0, 0x11bc(r31)
/* 809A3060  80 7F 15 74 */	lwz r3, 0x1574(r31)
/* 809A3064  38 80 00 00 */	li r4, 0
/* 809A3068  80 BF 0E 7C */	lwz r5, 0xe7c(r31)
/* 809A306C  38 C1 00 08 */	addi r6, r1, 8
/* 809A3070  C0 3E 02 24 */	lfs f1, 0x224(r30)
/* 809A3074  C0 7F 15 60 */	lfs f3, 0x1560(r31)
/* 809A3078  C0 9F 12 A0 */	lfs f4, 0x12a0(r31)
/* 809A307C  38 FF 12 F8 */	addi r7, r31, 0x12f8
/* 809A3080  39 1F 0E 80 */	addi r8, r31, 0xe80
/* 809A3084  39 20 00 00 */	li r9, 0
/* 809A3088  C0 BE 01 5C */	lfs f5, 0x15c(r30)
/* 809A308C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 809A3090  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 809A3094  4B 68 B8 7C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 809A3098  90 7F 15 74 */	stw r3, 0x1574(r31)
/* 809A309C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809A30A0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809A30A4  38 80 00 00 */	li r4, 0
/* 809A30A8  38 BF 1B B0 */	addi r5, r31, 0x1bb0
/* 809A30AC  38 DF 15 D4 */	addi r6, r31, 0x15d4
/* 809A30B0  4B 80 07 14 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 809A30B4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809A30B8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809A30BC  80 9F 15 D0 */	lwz r4, 0x15d0(r31)
/* 809A30C0  80 84 00 04 */	lwz r4, 4(r4)
/* 809A30C4  38 BF 15 D4 */	addi r5, r31, 0x15d4
/* 809A30C8  4B 80 1C D8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809A30CC  80 7F 15 D0 */	lwz r3, 0x15d0(r31)
/* 809A30D0  83 A3 00 04 */	lwz r29, 4(r3)
/* 809A30D4  3B 60 00 00 */	li r27, 0
/* 809A30D8  48 00 00 88 */	b lbl_809A3160
lbl_809A30DC:
/* 809A30DC  80 9D 00 60 */	lwz r4, 0x60(r29)
/* 809A30E0  57 63 04 3F */	clrlwi. r3, r27, 0x10
/* 809A30E4  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 809A30E8  7F 84 00 2E */	lwzx r28, r4, r0
/* 809A30EC  40 82 00 28 */	bne lbl_809A3114
/* 809A30F0  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 809A30F4  38 80 00 01 */	li r4, 1
/* 809A30F8  81 83 00 00 */	lwz r12, 0(r3)
/* 809A30FC  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 809A3100  7D 89 03 A6 */	mtctr r12
/* 809A3104  4E 80 04 21 */	bctrl 
/* 809A3108  88 1F 1D C7 */	lbz r0, 0x1dc7(r31)
/* 809A310C  98 03 00 03 */	stb r0, 3(r3)
/* 809A3110  48 00 00 4C */	b lbl_809A315C
lbl_809A3114:
/* 809A3114  28 03 00 01 */	cmplwi r3, 1
/* 809A3118  40 82 00 44 */	bne lbl_809A315C
/* 809A311C  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 809A3120  38 80 00 01 */	li r4, 1
/* 809A3124  81 83 00 00 */	lwz r12, 0(r3)
/* 809A3128  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 809A312C  7D 89 03 A6 */	mtctr r12
/* 809A3130  4E 80 04 21 */	bctrl 
/* 809A3134  88 1F 1D C5 */	lbz r0, 0x1dc5(r31)
/* 809A3138  98 03 00 03 */	stb r0, 3(r3)
/* 809A313C  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 809A3140  38 80 00 02 */	li r4, 2
/* 809A3144  81 83 00 00 */	lwz r12, 0(r3)
/* 809A3148  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 809A314C  7D 89 03 A6 */	mtctr r12
/* 809A3150  4E 80 04 21 */	bctrl 
/* 809A3154  88 1F 1D C6 */	lbz r0, 0x1dc6(r31)
/* 809A3158  98 03 00 03 */	stb r0, 3(r3)
lbl_809A315C:
/* 809A315C  3B 7B 00 01 */	addi r27, r27, 1
lbl_809A3160:
/* 809A3160  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 809A3164  28 00 00 02 */	cmplwi r0, 2
/* 809A3168  41 80 FF 74 */	blt lbl_809A30DC
/* 809A316C  80 7F 15 D0 */	lwz r3, 0x15d0(r31)
/* 809A3170  4B 66 AB 54 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 809A3174  C0 7F 1B B8 */	lfs f3, 0x1bb8(r31)
/* 809A3178  C0 5E 02 20 */	lfs f2, 0x220(r30)
/* 809A317C  C0 1F 1B B4 */	lfs f0, 0x1bb4(r31)
/* 809A3180  EC 22 00 2A */	fadds f1, f2, f0
/* 809A3184  C0 1F 1B B0 */	lfs f0, 0x1bb0(r31)
/* 809A3188  D0 01 00 08 */	stfs f0, 8(r1)
/* 809A318C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809A3190  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 809A3194  C0 1F 1B B0 */	lfs f0, 0x1bb0(r31)
/* 809A3198  D0 1F 11 B8 */	stfs f0, 0x11b8(r31)
/* 809A319C  C0 1F 1B B4 */	lfs f0, 0x1bb4(r31)
/* 809A31A0  D0 1F 11 BC */	stfs f0, 0x11bc(r31)
/* 809A31A4  C0 1F 1B B8 */	lfs f0, 0x1bb8(r31)
/* 809A31A8  D0 1F 11 C0 */	stfs f0, 0x11c0(r31)
/* 809A31AC  C0 3F 11 BC */	lfs f1, 0x11bc(r31)
/* 809A31B0  C0 1E 02 1C */	lfs f0, 0x21c(r30)
/* 809A31B4  EC 01 00 2A */	fadds f0, f1, f0
/* 809A31B8  D0 1F 11 BC */	stfs f0, 0x11bc(r31)
/* 809A31BC  80 7F 1D 50 */	lwz r3, 0x1d50(r31)
/* 809A31C0  38 80 00 00 */	li r4, 0
/* 809A31C4  80 BF 15 D0 */	lwz r5, 0x15d0(r31)
/* 809A31C8  38 C1 00 08 */	addi r6, r1, 8
/* 809A31CC  C0 3E 02 24 */	lfs f1, 0x224(r30)
/* 809A31D0  C0 7F 1B B4 */	lfs f3, 0x1bb4(r31)
/* 809A31D4  C0 9F 19 F4 */	lfs f4, 0x19f4(r31)
/* 809A31D8  38 FF 1A 4C */	addi r7, r31, 0x1a4c
/* 809A31DC  39 1F 0E 80 */	addi r8, r31, 0xe80
/* 809A31E0  39 20 00 00 */	li r9, 0
/* 809A31E4  C0 BE 01 5C */	lfs f5, 0x15c(r30)
/* 809A31E8  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 809A31EC  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 809A31F0  4B 68 B7 20 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 809A31F4  90 7F 1D 50 */	stw r3, 0x1d50(r31)
/* 809A31F8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809A31FC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809A3200  38 80 00 00 */	li r4, 0
/* 809A3204  38 BF 24 5C */	addi r5, r31, 0x245c
/* 809A3208  38 DF 1D CC */	addi r6, r31, 0x1dcc
/* 809A320C  4B 80 05 B8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 809A3210  80 7F 1D C8 */	lwz r3, 0x1dc8(r31)
/* 809A3214  80 83 00 04 */	lwz r4, 4(r3)
/* 809A3218  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809A321C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809A3220  80 84 00 04 */	lwz r4, 4(r4)
/* 809A3224  38 BF 1D CC */	addi r5, r31, 0x1dcc
/* 809A3228  4B 80 1B 78 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809A322C  80 7F 1D C8 */	lwz r3, 0x1dc8(r31)
/* 809A3230  80 63 00 04 */	lwz r3, 4(r3)
/* 809A3234  4B 66 AA 90 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 809A3238  3B DF 0D 00 */	addi r30, r31, 0xd00
/* 809A323C  88 1F 0E 6C */	lbz r0, 0xe6c(r31)
/* 809A3240  7C 00 07 74 */	extsb r0, r0
/* 809A3244  2C 00 00 01 */	cmpwi r0, 1
/* 809A3248  40 81 00 9C */	ble lbl_809A32E4
/* 809A324C  7F C3 F3 78 */	mr r3, r30
/* 809A3250  38 80 00 07 */	li r4, 7
/* 809A3254  3C A0 80 9A */	lis r5, data_809A51AC@ha
/* 809A3258  38 A5 51 AC */	addi r5, r5, data_809A51AC@l
/* 809A325C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 809A3260  4B 67 0D 50 */	b update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 809A3264  7F C3 F3 78 */	mr r3, r30
/* 809A3268  81 9E 00 00 */	lwz r12, 0(r30)
/* 809A326C  81 8C 00 08 */	lwz r12, 8(r12)
/* 809A3270  7D 89 03 A6 */	mtctr r12
/* 809A3274  4E 80 04 21 */	bctrl 
/* 809A3278  1C 83 00 14 */	mulli r4, r3, 0x14
/* 809A327C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809A3280  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809A3284  3B 83 5F 64 */	addi r28, r3, 0x5f64
/* 809A3288  3C 64 00 01 */	addis r3, r4, 1
/* 809A328C  38 63 61 54 */	addi r3, r3, 0x6154
/* 809A3290  7C 7C 1A 14 */	add r3, r28, r3
/* 809A3294  7F C4 F3 78 */	mr r4, r30
/* 809A3298  4B 67 14 A0 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 809A329C  38 7E 00 3C */	addi r3, r30, 0x3c
/* 809A32A0  38 80 00 02 */	li r4, 2
/* 809A32A4  3C A0 80 9A */	lis r5, data_809A51AC@ha
/* 809A32A8  38 A5 51 AC */	addi r5, r5, data_809A51AC@l
/* 809A32AC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 809A32B0  4B 67 0D 00 */	b update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 809A32B4  3B DE 00 3C */	addi r30, r30, 0x3c
/* 809A32B8  7F C3 F3 78 */	mr r3, r30
/* 809A32BC  81 9E 00 00 */	lwz r12, 0(r30)
/* 809A32C0  81 8C 00 08 */	lwz r12, 8(r12)
/* 809A32C4  7D 89 03 A6 */	mtctr r12
/* 809A32C8  4E 80 04 21 */	bctrl 
/* 809A32CC  1C 63 00 14 */	mulli r3, r3, 0x14
/* 809A32D0  3C 63 00 01 */	addis r3, r3, 1
/* 809A32D4  38 63 61 54 */	addi r3, r3, 0x6154
/* 809A32D8  7C 7C 1A 14 */	add r3, r28, r3
/* 809A32DC  7F C4 F3 78 */	mr r4, r30
/* 809A32E0  4B 67 14 58 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_809A32E4:
/* 809A32E4  38 60 00 01 */	li r3, 1
/* 809A32E8  39 61 00 40 */	addi r11, r1, 0x40
/* 809A32EC  4B 9B EF 34 */	b _restgpr_27
/* 809A32F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809A32F4  7C 08 03 A6 */	mtlr r0
/* 809A32F8  38 21 00 40 */	addi r1, r1, 0x40
/* 809A32FC  4E 80 00 20 */	blr 
