lbl_80969870:
/* 80969870  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80969874  7C 08 02 A6 */	mflr r0
/* 80969878  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096987C  39 61 00 20 */	addi r11, r1, 0x20
/* 80969880  4B 9F 89 59 */	bl _savegpr_28
/* 80969884  7C 7D 1B 78 */	mr r29, r3
/* 80969888  3C 60 80 97 */	lis r3, l_cyl_src@ha /* 0x8096C920@ha */
/* 8096988C  3B E3 C9 20 */	addi r31, r3, l_cyl_src@l /* 0x8096C920@l */
/* 80969890  88 1D 0E 10 */	lbz r0, 0xe10(r29)
/* 80969894  7C 00 07 75 */	extsb. r0, r0
/* 80969898  40 82 00 0C */	bne lbl_809698A4
/* 8096989C  38 60 00 01 */	li r3, 1
/* 809698A0  48 00 01 18 */	b lbl_809699B8
lbl_809698A4:
/* 809698A4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809698A8  83 C3 00 04 */	lwz r30, 4(r3)
/* 809698AC  38 00 00 00 */	li r0, 0
/* 809698B0  B0 1D 04 64 */	sth r0, 0x464(r29)
/* 809698B4  B0 1D 04 66 */	sth r0, 0x466(r29)
/* 809698B8  B0 1D 04 68 */	sth r0, 0x468(r29)
/* 809698BC  B0 1D 04 6A */	sth r0, 0x46a(r29)
/* 809698C0  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 809698C4  28 00 00 00 */	cmplwi r0, 0
/* 809698C8  41 82 00 74 */	beq lbl_8096993C
/* 809698CC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 809698D0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 809698D4  38 80 00 02 */	li r4, 2
/* 809698D8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 809698DC  38 DD 01 0C */	addi r6, r29, 0x10c
/* 809698E0  4B 83 9E E5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 809698E4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 809698E8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 809698EC  80 9E 00 04 */	lwz r4, 4(r30)
/* 809698F0  38 BD 01 0C */	addi r5, r29, 0x10c
/* 809698F4  4B 83 B4 AD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809698F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809698FC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80969900  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80969904  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80969908  3B 83 4A C8 */	addi r28, r3, j3dSys@l /* 0x80434AC8@l */
/* 8096990C  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80969910  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80969914  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80969918  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8096991C  4B 6A 78 A5 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80969920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80969924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80969928  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8096992C  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80969930  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80969934  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80969938  48 00 00 38 */	b lbl_80969970
lbl_8096993C:
/* 8096993C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80969940  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80969944  38 80 00 02 */	li r4, 2
/* 80969948  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8096994C  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80969950  4B 83 9E 75 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80969954  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80969958  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8096995C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80969960  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80969964  4B 83 B4 3D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80969968  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8096996C  4B 6A 78 55 */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_80969970:
/* 80969970  80 7D 09 A0 */	lwz r3, 0x9a0(r29)
/* 80969974  38 80 00 01 */	li r4, 1
/* 80969978  7F C5 F3 78 */	mr r5, r30
/* 8096997C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80969980  38 FF 00 44 */	addi r7, r31, 0x44
/* 80969984  C0 27 00 0C */	lfs f1, 0xc(r7)
/* 80969988  C0 5F 01 18 */	lfs f2, 0x118(r31)
/* 8096998C  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80969990  C0 9D 09 80 */	lfs f4, 0x980(r29)
/* 80969994  38 FD 0A 58 */	addi r7, r29, 0xa58
/* 80969998  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8096999C  39 20 00 00 */	li r9, 0
/* 809699A0  C0 BF 00 C8 */	lfs f5, 0xc8(r31)
/* 809699A4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 809699A8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 809699AC  4B 6C 4F 65 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 809699B0  90 7D 09 A0 */	stw r3, 0x9a0(r29)
/* 809699B4  38 60 00 01 */	li r3, 1
lbl_809699B8:
/* 809699B8  39 61 00 20 */	addi r11, r1, 0x20
/* 809699BC  4B 9F 88 69 */	bl _restgpr_28
/* 809699C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809699C4  7C 08 03 A6 */	mtlr r0
/* 809699C8  38 21 00 20 */	addi r1, r1, 0x20
/* 809699CC  4E 80 00 20 */	blr 
