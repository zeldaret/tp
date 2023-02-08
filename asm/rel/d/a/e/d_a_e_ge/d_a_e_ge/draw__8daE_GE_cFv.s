lbl_806C7BB8:
/* 806C7BB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806C7BBC  7C 08 02 A6 */	mflr r0
/* 806C7BC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806C7BC4  39 61 00 30 */	addi r11, r1, 0x30
/* 806C7BC8  4B C9 A6 15 */	bl _savegpr_29
/* 806C7BCC  7C 7D 1B 78 */	mr r29, r3
/* 806C7BD0  3C 60 80 6D */	lis r3, lit_3904@ha /* 0x806CD000@ha */
/* 806C7BD4  3B E3 D0 00 */	addi r31, r3, lit_3904@l /* 0x806CD000@l */
/* 806C7BD8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806C7BDC  83 C3 00 04 */	lwz r30, 4(r3)
/* 806C7BE0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806C7BE4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806C7BE8  38 80 00 00 */	li r4, 0
/* 806C7BEC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806C7BF0  38 DD 01 0C */	addi r6, r29, 0x10c
/* 806C7BF4  4B AD BB D1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806C7BF8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806C7BFC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806C7C00  80 9E 00 04 */	lwz r4, 4(r30)
/* 806C7C04  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806C7C08  4B AD D1 99 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806C7C0C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806C7C10  4B 94 95 B1 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 806C7C14  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806C7C18  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806C7C1C  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 806C7C20  EC 20 18 2A */	fadds f1, f0, f3
/* 806C7C24  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806C7C28  D0 01 00 08 */	stfs f0, 8(r1)
/* 806C7C2C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806C7C30  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806C7C34  80 7D 0B 84 */	lwz r3, 0xb84(r29)
/* 806C7C38  38 80 00 01 */	li r4, 1
/* 806C7C3C  7F C5 F3 78 */	mr r5, r30
/* 806C7C40  38 C1 00 08 */	addi r6, r1, 8
/* 806C7C44  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806C7C48  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806C7C4C  C0 9D 07 34 */	lfs f4, 0x734(r29)
/* 806C7C50  38 FD 07 8C */	addi r7, r29, 0x78c
/* 806C7C54  39 1D 01 0C */	addi r8, r29, 0x10c
/* 806C7C58  39 20 00 00 */	li r9, 0
/* 806C7C5C  C0 BF 00 08 */	lfs f5, 8(r31)
/* 806C7C60  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 806C7C64  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 806C7C68  4B 96 6C A9 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806C7C6C  90 7D 0B 84 */	stw r3, 0xb84(r29)
/* 806C7C70  38 60 00 01 */	li r3, 1
/* 806C7C74  39 61 00 30 */	addi r11, r1, 0x30
/* 806C7C78  4B C9 A5 B1 */	bl _restgpr_29
/* 806C7C7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806C7C80  7C 08 03 A6 */	mtlr r0
/* 806C7C84  38 21 00 30 */	addi r1, r1, 0x30
/* 806C7C88  4E 80 00 20 */	blr 
