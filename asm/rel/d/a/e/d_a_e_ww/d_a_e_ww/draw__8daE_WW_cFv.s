lbl_807E79D4:
/* 807E79D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807E79D8  7C 08 02 A6 */	mflr r0
/* 807E79DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807E79E0  39 61 00 30 */	addi r11, r1, 0x30
/* 807E79E4  4B B7 A7 F9 */	bl _savegpr_29
/* 807E79E8  7C 7D 1B 78 */	mr r29, r3
/* 807E79EC  3C 60 80 7F */	lis r3, lit_3905@ha /* 0x807EF770@ha */
/* 807E79F0  3B E3 F7 70 */	addi r31, r3, lit_3905@l /* 0x807EF770@l */
/* 807E79F4  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 807E79F8  2C 00 00 00 */	cmpwi r0, 0
/* 807E79FC  40 82 00 0C */	bne lbl_807E7A08
/* 807E7A00  38 60 00 01 */	li r3, 1
/* 807E7A04  48 00 00 A0 */	b lbl_807E7AA4
lbl_807E7A08:
/* 807E7A08  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807E7A0C  83 C3 00 04 */	lwz r30, 4(r3)
/* 807E7A10  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807E7A14  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807E7A18  38 80 00 00 */	li r4, 0
/* 807E7A1C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807E7A20  38 DD 01 0C */	addi r6, r29, 0x10c
/* 807E7A24  4B 9B BD A1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807E7A28  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 807E7A2C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 807E7A30  80 9E 00 04 */	lwz r4, 4(r30)
/* 807E7A34  38 BD 01 0C */	addi r5, r29, 0x10c
/* 807E7A38  4B 9B D3 69 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807E7A3C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807E7A40  4B 82 97 81 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 807E7A44  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807E7A48  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807E7A4C  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 807E7A50  EC 20 18 2A */	fadds f1, f0, f3
/* 807E7A54  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807E7A58  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E7A5C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807E7A60  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 807E7A64  80 7D 06 D0 */	lwz r3, 0x6d0(r29)
/* 807E7A68  38 80 00 01 */	li r4, 1
/* 807E7A6C  7F C5 F3 78 */	mr r5, r30
/* 807E7A70  38 C1 00 08 */	addi r6, r1, 8
/* 807E7A74  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 807E7A78  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807E7A7C  C0 9D 08 38 */	lfs f4, 0x838(r29)
/* 807E7A80  38 FD 08 90 */	addi r7, r29, 0x890
/* 807E7A84  39 1D 01 0C */	addi r8, r29, 0x10c
/* 807E7A88  39 20 00 00 */	li r9, 0
/* 807E7A8C  C0 BF 00 08 */	lfs f5, 8(r31)
/* 807E7A90  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 807E7A94  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 807E7A98  4B 84 6E 79 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807E7A9C  90 7D 06 D0 */	stw r3, 0x6d0(r29)
/* 807E7AA0  38 60 00 01 */	li r3, 1
lbl_807E7AA4:
/* 807E7AA4  39 61 00 30 */	addi r11, r1, 0x30
/* 807E7AA8  4B B7 A7 81 */	bl _restgpr_29
/* 807E7AAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807E7AB0  7C 08 03 A6 */	mtlr r0
/* 807E7AB4  38 21 00 30 */	addi r1, r1, 0x30
/* 807E7AB8  4E 80 00 20 */	blr 
