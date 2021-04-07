lbl_805AB2E8:
/* 805AB2E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AB2EC  7C 08 02 A6 */	mflr r0
/* 805AB2F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AB2F4  39 61 00 30 */	addi r11, r1, 0x30
/* 805AB2F8  4B DB 6E E5 */	bl _savegpr_29
/* 805AB2FC  7C 7D 1B 78 */	mr r29, r3
/* 805AB300  3C 60 80 5B */	lis r3, lit_3850@ha /* 0x805ADF50@ha */
/* 805AB304  3B E3 DF 50 */	addi r31, r3, lit_3850@l /* 0x805ADF50@l */
/* 805AB308  88 1D 08 B4 */	lbz r0, 0x8b4(r29)
/* 805AB30C  28 00 00 00 */	cmplwi r0, 0
/* 805AB310  41 82 00 0C */	beq lbl_805AB31C
/* 805AB314  38 60 00 01 */	li r3, 1
/* 805AB318  48 00 00 A0 */	b lbl_805AB3B8
lbl_805AB31C:
/* 805AB31C  80 7D 07 88 */	lwz r3, 0x788(r29)
/* 805AB320  83 C3 00 04 */	lwz r30, 4(r3)
/* 805AB324  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805AB328  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805AB32C  38 80 00 00 */	li r4, 0
/* 805AB330  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805AB334  38 DD 01 0C */	addi r6, r29, 0x10c
/* 805AB338  4B BF 84 8D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805AB33C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805AB340  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805AB344  80 9E 00 04 */	lwz r4, 4(r30)
/* 805AB348  38 BD 01 0C */	addi r5, r29, 0x10c
/* 805AB34C  4B BF 9A 55 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805AB350  80 7D 07 88 */	lwz r3, 0x788(r29)
/* 805AB354  4B A6 5E 6D */	bl entryDL__16mDoExt_McaMorfSOFv
/* 805AB358  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 805AB35C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805AB360  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 805AB364  EC 20 18 2A */	fadds f1, f0, f3
/* 805AB368  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805AB36C  D0 01 00 08 */	stfs f0, 8(r1)
/* 805AB370  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805AB374  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805AB378  80 7D 08 94 */	lwz r3, 0x894(r29)
/* 805AB37C  38 80 00 00 */	li r4, 0
/* 805AB380  7F C5 F3 78 */	mr r5, r30
/* 805AB384  38 C1 00 08 */	addi r6, r1, 8
/* 805AB388  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805AB38C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805AB390  C0 9D 06 40 */	lfs f4, 0x640(r29)
/* 805AB394  38 FD 06 98 */	addi r7, r29, 0x698
/* 805AB398  39 1D 01 0C */	addi r8, r29, 0x10c
/* 805AB39C  39 20 00 00 */	li r9, 0
/* 805AB3A0  C0 BF 00 0C */	lfs f5, 0xc(r31)
/* 805AB3A4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 805AB3A8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 805AB3AC  4B A8 35 65 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 805AB3B0  90 7D 08 94 */	stw r3, 0x894(r29)
/* 805AB3B4  38 60 00 01 */	li r3, 1
lbl_805AB3B8:
/* 805AB3B8  39 61 00 30 */	addi r11, r1, 0x30
/* 805AB3BC  4B DB 6E 6D */	bl _restgpr_29
/* 805AB3C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AB3C4  7C 08 03 A6 */	mtlr r0
/* 805AB3C8  38 21 00 30 */	addi r1, r1, 0x30
/* 805AB3CC  4E 80 00 20 */	blr 
