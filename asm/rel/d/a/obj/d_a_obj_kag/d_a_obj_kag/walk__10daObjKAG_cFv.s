lbl_80C2F8C4:
/* 80C2F8C4  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 80C2F8C8  7C 08 02 A6 */	mflr r0
/* 80C2F8CC  90 01 01 94 */	stw r0, 0x194(r1)
/* 80C2F8D0  39 61 01 90 */	addi r11, r1, 0x190
/* 80C2F8D4  4B 73 29 09 */	bl _savegpr_29
/* 80C2F8D8  7C 7E 1B 78 */	mr r30, r3
/* 80C2F8DC  3C 60 80 C3 */	lis r3, lit_3774@ha /* 0x80C3114C@ha */
/* 80C2F8E0  3B E3 11 4C */	addi r31, r3, lit_3774@l /* 0x80C3114C@l */
/* 80C2F8E4  80 1E 08 3C */	lwz r0, 0x83c(r30)
/* 80C2F8E8  2C 00 00 00 */	cmpwi r0, 0
/* 80C2F8EC  40 82 00 78 */	bne lbl_80C2F964
/* 80C2F8F0  3C 60 80 C3 */	lis r3, d_a_obj_kag__stringBase0@ha /* 0x80C31260@ha */
/* 80C2F8F4  38 63 12 60 */	addi r3, r3, d_a_obj_kag__stringBase0@l /* 0x80C31260@l */
/* 80C2F8F8  38 80 00 07 */	li r4, 7
/* 80C2F8FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2F900  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2F904  3C A5 00 02 */	addis r5, r5, 2
/* 80C2F908  38 C0 00 80 */	li r6, 0x80
/* 80C2F90C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2F910  4B 40 C9 DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2F914  7C 64 1B 78 */	mr r4, r3
/* 80C2F918  80 7E 06 28 */	lwz r3, 0x628(r30)
/* 80C2F91C  38 A0 00 02 */	li r5, 2
/* 80C2F920  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80C2F924  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80C2F928  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 80C2F92C  C0 9F 00 40 */	lfs f4, 0x40(r31)
/* 80C2F930  4B 3E 15 41 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C2F934  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C2F938  4B 63 80 1D */	bl cM_rndF__Ff
/* 80C2F93C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C2F940  EC 00 08 2A */	fadds f0, f0, f1
/* 80C2F944  FC 00 00 1E */	fctiwz f0, f0
/* 80C2F948  D8 01 01 70 */	stfd f0, 0x170(r1)
/* 80C2F94C  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80C2F950  98 1E 08 5A */	stb r0, 0x85a(r30)
/* 80C2F954  80 7E 08 3C */	lwz r3, 0x83c(r30)
/* 80C2F958  38 03 00 01 */	addi r0, r3, 1
/* 80C2F95C  90 1E 08 3C */	stw r0, 0x83c(r30)
/* 80C2F960  48 00 04 1C */	b lbl_80C2FD7C
lbl_80C2F964:
/* 80C2F964  2C 00 FF FF */	cmpwi r0, -1
/* 80C2F968  40 82 00 10 */	bne lbl_80C2F978
/* 80C2F96C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C2F970  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C2F974  48 00 04 08 */	b lbl_80C2FD7C
lbl_80C2F978:
/* 80C2F978  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C2F97C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C2F980  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C2F984  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C2F988  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80C2F98C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C2F990  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C2F994  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C2F998  38 7E 08 14 */	addi r3, r30, 0x814
/* 80C2F99C  4B 3D D5 71 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80C2F9A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2F9A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2F9A8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C2F9AC  4B 3D CA 89 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C2F9B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2F9B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2F9B8  38 81 00 70 */	addi r4, r1, 0x70
/* 80C2F9BC  38 A1 00 64 */	addi r5, r1, 0x64
/* 80C2F9C0  4B 71 73 AD */	bl PSMTXMultVec
/* 80C2F9C4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C2F9C8  38 81 00 64 */	addi r4, r1, 0x64
/* 80C2F9CC  7C 65 1B 78 */	mr r5, r3
/* 80C2F9D0  4B 71 76 C1 */	bl PSVECAdd
/* 80C2F9D4  38 61 01 00 */	addi r3, r1, 0x100
/* 80C2F9D8  4B 44 82 91 */	bl __ct__11dBgS_LinChkFv
/* 80C2F9DC  38 61 00 90 */	addi r3, r1, 0x90
/* 80C2F9E0  4B 44 82 89 */	bl __ct__11dBgS_LinChkFv
/* 80C2F9E4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C2F9E8  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80C2F9EC  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80C2F9F0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C2F9F4  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80C2F9F8  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80C2F9FC  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80C2FA00  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C2FA04  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80C2FA08  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80C2FA0C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C2FA10  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C2FA14  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C2FA18  4B 3D D3 4D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C2FA1C  38 7E 08 14 */	addi r3, r30, 0x814
/* 80C2FA20  4B 3D D5 25 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C2FA24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2FA28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2FA2C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C2FA30  4B 3D CA 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C2FA34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2FA38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2FA3C  38 81 00 58 */	addi r4, r1, 0x58
/* 80C2FA40  7C 85 23 78 */	mr r5, r4
/* 80C2FA44  4B 71 73 29 */	bl PSMTXMultVec
/* 80C2FA48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2FA4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2FA50  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C2FA54  7C 85 23 78 */	mr r5, r4
/* 80C2FA58  4B 71 73 15 */	bl PSMTXMultVec
/* 80C2FA5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2FA60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2FA64  38 81 00 40 */	addi r4, r1, 0x40
/* 80C2FA68  7C 85 23 78 */	mr r5, r4
/* 80C2FA6C  4B 71 73 01 */	bl PSMTXMultVec
/* 80C2FA70  38 61 01 58 */	addi r3, r1, 0x158
/* 80C2FA74  4B 44 93 F5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C2FA78  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80C2FA7C  4B 44 93 ED */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C2FA80  38 61 01 00 */	addi r3, r1, 0x100
/* 80C2FA84  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C2FA88  38 A1 00 58 */	addi r5, r1, 0x58
/* 80C2FA8C  38 C0 00 00 */	li r6, 0
/* 80C2FA90  4B 44 82 D5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C2FA94  38 61 00 90 */	addi r3, r1, 0x90
/* 80C2FA98  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C2FA9C  38 A1 00 40 */	addi r5, r1, 0x40
/* 80C2FAA0  38 C0 00 00 */	li r6, 0
/* 80C2FAA4  4B 44 82 C1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C2FAA8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C2FAAC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C2FAB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2FAB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2FAB8  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80C2FABC  7F A3 EB 78 */	mr r3, r29
/* 80C2FAC0  38 81 01 00 */	addi r4, r1, 0x100
/* 80C2FAC4  4B 44 48 F1 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C2FAC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2FACC  41 82 01 B8 */	beq lbl_80C2FC84
/* 80C2FAD0  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C31404@ha */
/* 80C2FAD4  38 03 14 04 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C31404@l */
/* 80C2FAD8  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80C2FADC  7F A3 EB 78 */	mr r3, r29
/* 80C2FAE0  38 81 01 14 */	addi r4, r1, 0x114
/* 80C2FAE4  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80C2FAE8  4B 44 4C 5D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C2FAEC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C2FAF0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C2FAF4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C2FAF8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C2FAFC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C2FB00  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80C2FB04  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C2FB08  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80C2FB0C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C2FB10  38 61 00 34 */	addi r3, r1, 0x34
/* 80C2FB14  38 81 00 28 */	addi r4, r1, 0x28
/* 80C2FB18  4B 71 78 85 */	bl PSVECSquareDistance
/* 80C2FB1C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C2FB20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2FB24  40 81 00 58 */	ble lbl_80C2FB7C
/* 80C2FB28  FC 00 08 34 */	frsqrte f0, f1
/* 80C2FB2C  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 80C2FB30  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2FB34  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 80C2FB38  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2FB3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2FB40  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2FB44  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2FB48  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2FB4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2FB50  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2FB54  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2FB58  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2FB5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C2FB60  FC 00 00 32 */	fmul f0, f0, f0
/* 80C2FB64  FC 01 00 32 */	fmul f0, f1, f0
/* 80C2FB68  FC 03 00 28 */	fsub f0, f3, f0
/* 80C2FB6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C2FB70  FC 41 00 32 */	fmul f2, f1, f0
/* 80C2FB74  FC 40 10 18 */	frsp f2, f2
/* 80C2FB78  48 00 00 90 */	b lbl_80C2FC08
lbl_80C2FB7C:
/* 80C2FB7C  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 80C2FB80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C2FB84  40 80 00 10 */	bge lbl_80C2FB94
/* 80C2FB88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2FB8C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2FB90  48 00 00 78 */	b lbl_80C2FC08
lbl_80C2FB94:
/* 80C2FB94  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C2FB98  80 81 00 08 */	lwz r4, 8(r1)
/* 80C2FB9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C2FBA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C2FBA4  7C 03 00 00 */	cmpw r3, r0
/* 80C2FBA8  41 82 00 14 */	beq lbl_80C2FBBC
/* 80C2FBAC  40 80 00 40 */	bge lbl_80C2FBEC
/* 80C2FBB0  2C 03 00 00 */	cmpwi r3, 0
/* 80C2FBB4  41 82 00 20 */	beq lbl_80C2FBD4
/* 80C2FBB8  48 00 00 34 */	b lbl_80C2FBEC
lbl_80C2FBBC:
/* 80C2FBBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2FBC0  41 82 00 0C */	beq lbl_80C2FBCC
/* 80C2FBC4  38 00 00 01 */	li r0, 1
/* 80C2FBC8  48 00 00 28 */	b lbl_80C2FBF0
lbl_80C2FBCC:
/* 80C2FBCC  38 00 00 02 */	li r0, 2
/* 80C2FBD0  48 00 00 20 */	b lbl_80C2FBF0
lbl_80C2FBD4:
/* 80C2FBD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C2FBD8  41 82 00 0C */	beq lbl_80C2FBE4
/* 80C2FBDC  38 00 00 05 */	li r0, 5
/* 80C2FBE0  48 00 00 10 */	b lbl_80C2FBF0
lbl_80C2FBE4:
/* 80C2FBE4  38 00 00 03 */	li r0, 3
/* 80C2FBE8  48 00 00 08 */	b lbl_80C2FBF0
lbl_80C2FBEC:
/* 80C2FBEC  38 00 00 04 */	li r0, 4
lbl_80C2FBF0:
/* 80C2FBF0  2C 00 00 01 */	cmpwi r0, 1
/* 80C2FBF4  40 82 00 10 */	bne lbl_80C2FC04
/* 80C2FBF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C2FBFC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C2FC00  48 00 00 08 */	b lbl_80C2FC08
lbl_80C2FC04:
/* 80C2FC04  FC 40 08 90 */	fmr f2, f1
lbl_80C2FC08:
/* 80C2FC08  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 80C2FC0C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C2FC10  C0 01 01 34 */	lfs f0, 0x134(r1)
/* 80C2FC14  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C2FC18  C0 01 01 38 */	lfs f0, 0x138(r1)
/* 80C2FC1C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C2FC20  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80C2FC24  4B 63 7A 51 */	bl cM_atan2s__Fff
/* 80C2FC28  7C 03 00 D0 */	neg r0, r3
/* 80C2FC2C  B0 1E 08 18 */	sth r0, 0x818(r30)
/* 80C2FC30  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80C2FC34  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 80C2FC38  4B 63 7A 3D */	bl cM_atan2s__Fff
/* 80C2FC3C  B0 7E 08 14 */	sth r3, 0x814(r30)
/* 80C2FC40  7F A3 EB 78 */	mr r3, r29
/* 80C2FC44  38 81 00 90 */	addi r4, r1, 0x90
/* 80C2FC48  4B 44 47 6D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C2FC4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2FC50  41 82 00 14 */	beq lbl_80C2FC64
/* 80C2FC54  A8 7E 08 4E */	lha r3, 0x84e(r30)
/* 80C2FC58  38 03 01 00 */	addi r0, r3, 0x100
/* 80C2FC5C  B0 1E 08 4E */	sth r0, 0x84e(r30)
/* 80C2FC60  48 00 00 14 */	b lbl_80C2FC74
lbl_80C2FC64:
/* 80C2FC64  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C2FC68  B0 1E 08 4E */	sth r0, 0x84e(r30)
/* 80C2FC6C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C2FC70  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80C2FC74:
/* 80C2FC74  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C31404@ha */
/* 80C2FC78  38 03 14 04 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C31404@l */
/* 80C2FC7C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80C2FC80  48 00 00 10 */	b lbl_80C2FC90
lbl_80C2FC84:
/* 80C2FC84  A8 7E 08 4E */	lha r3, 0x84e(r30)
/* 80C2FC88  38 03 01 00 */	addi r0, r3, 0x100
/* 80C2FC8C  B0 1E 08 4E */	sth r0, 0x84e(r30)
lbl_80C2FC90:
/* 80C2FC90  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80C2FC94  A8 9E 08 4E */	lha r4, 0x84e(r30)
/* 80C2FC98  38 A0 01 00 */	li r5, 0x100
/* 80C2FC9C  4B 64 0E F5 */	bl cLib_chaseAngleS__FPsss
/* 80C2FCA0  88 1E 05 6D */	lbz r0, 0x56d(r30)
/* 80C2FCA4  28 00 00 00 */	cmplwi r0, 0
/* 80C2FCA8  41 82 00 0C */	beq lbl_80C2FCB4
/* 80C2FCAC  7F C3 F3 78 */	mr r3, r30
/* 80C2FCB0  48 00 11 A5 */	bl kag_setParticle__10daObjKAG_cFv
lbl_80C2FCB4:
/* 80C2FCB4  88 1E 08 5A */	lbz r0, 0x85a(r30)
/* 80C2FCB8  28 00 00 00 */	cmplwi r0, 0
/* 80C2FCBC  40 82 00 7C */	bne lbl_80C2FD38
/* 80C2FCC0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80C2FCC4  4B 63 7C 91 */	bl cM_rndF__Ff
/* 80C2FCC8  FC 00 08 1E */	fctiwz f0, f1
/* 80C2FCCC  D8 01 01 70 */	stfd f0, 0x170(r1)
/* 80C2FCD0  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80C2FCD4  7C 00 07 35 */	extsh. r0, r0
/* 80C2FCD8  41 82 00 34 */	beq lbl_80C2FD0C
/* 80C2FCDC  3C 60 80 C3 */	lis r3, lit_4377@ha /* 0x80C312F4@ha */
/* 80C2FCE0  38 83 12 F4 */	addi r4, r3, lit_4377@l /* 0x80C312F4@l */
/* 80C2FCE4  80 64 00 00 */	lwz r3, 0(r4)
/* 80C2FCE8  80 04 00 04 */	lwz r0, 4(r4)
/* 80C2FCEC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80C2FCF0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C2FCF4  80 04 00 08 */	lwz r0, 8(r4)
/* 80C2FCF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C2FCFC  7F C3 F3 78 */	mr r3, r30
/* 80C2FD00  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C2FD04  4B FF E7 31 */	bl setAction__10daObjKAG_cFM10daObjKAG_cFPCvPv_v
/* 80C2FD08  48 00 00 30 */	b lbl_80C2FD38
lbl_80C2FD0C:
/* 80C2FD0C  3C 60 80 C3 */	lis r3, lit_4380@ha /* 0x80C31300@ha */
/* 80C2FD10  38 83 13 00 */	addi r4, r3, lit_4380@l /* 0x80C31300@l */
/* 80C2FD14  80 64 00 00 */	lwz r3, 0(r4)
/* 80C2FD18  80 04 00 04 */	lwz r0, 4(r4)
/* 80C2FD1C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80C2FD20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2FD24  80 04 00 08 */	lwz r0, 8(r4)
/* 80C2FD28  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C2FD2C  7F C3 F3 78 */	mr r3, r30
/* 80C2FD30  38 81 00 10 */	addi r4, r1, 0x10
/* 80C2FD34  4B FF E7 01 */	bl setAction__10daObjKAG_cFM10daObjKAG_cFPCvPv_v
lbl_80C2FD38:
/* 80C2FD38  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A5@ha */
/* 80C2FD3C  38 03 00 A5 */	addi r0, r3, 0x00A5 /* 0x000600A5@l */
/* 80C2FD40  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C2FD44  38 7E 05 98 */	addi r3, r30, 0x598
/* 80C2FD48  38 81 00 0C */	addi r4, r1, 0xc
/* 80C2FD4C  38 A0 00 00 */	li r5, 0
/* 80C2FD50  38 C0 FF FF */	li r6, -1
/* 80C2FD54  81 9E 05 98 */	lwz r12, 0x598(r30)
/* 80C2FD58  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C2FD5C  7D 89 03 A6 */	mtctr r12
/* 80C2FD60  4E 80 04 21 */	bctrl 
/* 80C2FD64  38 61 00 90 */	addi r3, r1, 0x90
/* 80C2FD68  38 80 FF FF */	li r4, -1
/* 80C2FD6C  4B 44 7F 71 */	bl __dt__11dBgS_LinChkFv
/* 80C2FD70  38 61 01 00 */	addi r3, r1, 0x100
/* 80C2FD74  38 80 FF FF */	li r4, -1
/* 80C2FD78  4B 44 7F 65 */	bl __dt__11dBgS_LinChkFv
lbl_80C2FD7C:
/* 80C2FD7C  39 61 01 90 */	addi r11, r1, 0x190
/* 80C2FD80  4B 73 24 A9 */	bl _restgpr_29
/* 80C2FD84  80 01 01 94 */	lwz r0, 0x194(r1)
/* 80C2FD88  7C 08 03 A6 */	mtlr r0
/* 80C2FD8C  38 21 01 90 */	addi r1, r1, 0x190
/* 80C2FD90  4E 80 00 20 */	blr 
