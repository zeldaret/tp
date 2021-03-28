lbl_808330DC:
/* 808330DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 808330E0  7C 08 02 A6 */	mflr r0
/* 808330E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 808330E8  39 61 00 30 */	addi r11, r1, 0x30
/* 808330EC  4B B2 F0 F0 */	b _savegpr_29
/* 808330F0  7C 7D 1B 78 */	mr r29, r3
/* 808330F4  3C 60 80 83 */	lis r3, lit_3909@ha
/* 808330F8  3B E3 52 D0 */	addi r31, r3, lit_3909@l
/* 808330FC  88 1D 06 73 */	lbz r0, 0x673(r29)
/* 80833100  28 00 00 00 */	cmplwi r0, 0
/* 80833104  40 82 00 0C */	bne lbl_80833110
/* 80833108  38 60 00 01 */	li r3, 1
/* 8083310C  48 00 00 A0 */	b lbl_808331AC
lbl_80833110:
/* 80833110  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80833114  83 C3 00 04 */	lwz r30, 4(r3)
/* 80833118  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8083311C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80833120  38 80 00 00 */	li r4, 0
/* 80833124  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80833128  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8083312C  4B 97 06 98 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80833130  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80833134  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80833138  80 9E 00 04 */	lwz r4, 4(r30)
/* 8083313C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80833140  4B 97 1C 60 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80833144  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80833148  4B 7D E0 78 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8083314C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80833150  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80833154  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80833158  EC 20 18 2A */	fadds f1, f0, f3
/* 8083315C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80833160  D0 01 00 08 */	stfs f0, 8(r1)
/* 80833164  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80833168  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8083316C  80 7D 06 6C */	lwz r3, 0x66c(r29)
/* 80833170  38 80 00 01 */	li r4, 1
/* 80833174  7F C5 F3 78 */	mr r5, r30
/* 80833178  38 C1 00 08 */	addi r6, r1, 8
/* 8083317C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80833180  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80833184  C0 9D 07 4C */	lfs f4, 0x74c(r29)
/* 80833188  38 FD 07 A4 */	addi r7, r29, 0x7a4
/* 8083318C  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80833190  39 20 00 00 */	li r9, 0
/* 80833194  C0 BF 00 08 */	lfs f5, 8(r31)
/* 80833198  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8083319C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 808331A0  4B 7F B7 70 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 808331A4  90 7D 06 6C */	stw r3, 0x66c(r29)
/* 808331A8  38 60 00 01 */	li r3, 1
lbl_808331AC:
/* 808331AC  39 61 00 30 */	addi r11, r1, 0x30
/* 808331B0  4B B2 F0 78 */	b _restgpr_29
/* 808331B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 808331B8  7C 08 03 A6 */	mtlr r0
/* 808331BC  38 21 00 30 */	addi r1, r1, 0x30
/* 808331C0  4E 80 00 20 */	blr 
