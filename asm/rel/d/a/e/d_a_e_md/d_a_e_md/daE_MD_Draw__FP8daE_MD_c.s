lbl_80709E6C:
/* 80709E6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80709E70  7C 08 02 A6 */	mflr r0
/* 80709E74  90 01 00 34 */	stw r0, 0x34(r1)
/* 80709E78  39 61 00 30 */	addi r11, r1, 0x30
/* 80709E7C  4B C5 83 5D */	bl _savegpr_28
/* 80709E80  7C 7E 1B 78 */	mr r30, r3
/* 80709E84  3C 60 80 71 */	lis r3, ccCylSrc@ha /* 0x8070A4EC@ha */
/* 80709E88  3B E3 A4 EC */	addi r31, r3, ccCylSrc@l /* 0x8070A4EC@l */
/* 80709E8C  80 7E 06 8C */	lwz r3, 0x68c(r30)
/* 80709E90  80 63 00 04 */	lwz r3, 4(r3)
/* 80709E94  80 63 00 04 */	lwz r3, 4(r3)
/* 80709E98  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80709E9C  80 63 00 04 */	lwz r3, 4(r3)
/* 80709EA0  80 63 00 08 */	lwz r3, 8(r3)
/* 80709EA4  28 03 00 00 */	cmplwi r3, 0
/* 80709EA8  41 82 00 34 */	beq lbl_80709EDC
/* 80709EAC  80 1E 05 AC */	lwz r0, 0x5ac(r30)
/* 80709EB0  2C 00 00 01 */	cmpwi r0, 1
/* 80709EB4  41 82 00 0C */	beq lbl_80709EC0
/* 80709EB8  2C 00 00 02 */	cmpwi r0, 2
/* 80709EBC  40 82 00 14 */	bne lbl_80709ED0
lbl_80709EC0:
/* 80709EC0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80709EC4  60 00 00 01 */	ori r0, r0, 1
/* 80709EC8  90 03 00 0C */	stw r0, 0xc(r3)
/* 80709ECC  48 00 00 10 */	b lbl_80709EDC
lbl_80709ED0:
/* 80709ED0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80709ED4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80709ED8  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80709EDC:
/* 80709EDC  80 7E 06 8C */	lwz r3, 0x68c(r30)
/* 80709EE0  83 A3 00 04 */	lwz r29, 4(r3)
/* 80709EE4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80709EE8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80709EEC  38 80 00 08 */	li r4, 8
/* 80709EF0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80709EF4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80709EF8  4B A9 98 CD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80709EFC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80709F00  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80709F04  80 9D 00 04 */	lwz r4, 4(r29)
/* 80709F08  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80709F0C  4B A9 AE 95 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80709F10  80 7E 06 8C */	lwz r3, 0x68c(r30)
/* 80709F14  4B 90 72 AD */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80709F18  3B 80 00 00 */	li r28, 0
/* 80709F1C  80 1E 05 B0 */	lwz r0, 0x5b0(r30)
/* 80709F20  2C 00 00 01 */	cmpwi r0, 1
/* 80709F24  41 82 00 2C */	beq lbl_80709F50
/* 80709F28  80 7E 06 90 */	lwz r3, 0x690(r30)
/* 80709F2C  83 83 00 04 */	lwz r28, 4(r3)
/* 80709F30  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80709F34  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80709F38  80 9C 00 04 */	lwz r4, 4(r28)
/* 80709F3C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80709F40  4B A9 AE 61 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80709F44  80 7E 06 90 */	lwz r3, 0x690(r30)
/* 80709F48  4B 90 72 79 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80709F4C  48 00 00 24 */	b lbl_80709F70
lbl_80709F50:
/* 80709F50  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80709F54  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80709F58  80 9E 06 94 */	lwz r4, 0x694(r30)
/* 80709F5C  80 84 00 04 */	lwz r4, 4(r4)
/* 80709F60  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80709F64  4B A9 AE 3D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80709F68  80 7E 06 94 */	lwz r3, 0x694(r30)
/* 80709F6C  4B 90 3D 59 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80709F70:
/* 80709F70  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80709F74  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80709F78  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80709F7C  EC 20 18 2A */	fadds f1, f0, f3
/* 80709F80  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80709F84  D0 01 00 08 */	stfs f0, 8(r1)
/* 80709F88  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80709F8C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80709F90  80 7E 06 88 */	lwz r3, 0x688(r30)
/* 80709F94  38 80 00 01 */	li r4, 1
/* 80709F98  7F A5 EB 78 */	mr r5, r29
/* 80709F9C  38 C1 00 08 */	addi r6, r1, 8
/* 80709FA0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80709FA4  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80709FA8  C0 9E 07 70 */	lfs f4, 0x770(r30)
/* 80709FAC  38 FE 07 C8 */	addi r7, r30, 0x7c8
/* 80709FB0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80709FB4  39 20 00 00 */	li r9, 0
/* 80709FB8  C0 BF 00 48 */	lfs f5, 0x48(r31)
/* 80709FBC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80709FC0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80709FC4  4B 92 49 4D */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80709FC8  90 7E 06 88 */	stw r3, 0x688(r30)
/* 80709FCC  28 1C 00 00 */	cmplwi r28, 0
/* 80709FD0  41 82 00 20 */	beq lbl_80709FF0
/* 80709FD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80709FD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80709FDC  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80709FE0  80 9E 06 88 */	lwz r4, 0x688(r30)
/* 80709FE4  7F 85 E3 78 */	mr r5, r28
/* 80709FE8  4B 94 BF 35 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 80709FEC  48 00 00 1C */	b lbl_8070A008
lbl_80709FF0:
/* 80709FF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80709FF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80709FF8  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80709FFC  80 9E 06 88 */	lwz r4, 0x688(r30)
/* 8070A000  80 BE 06 94 */	lwz r5, 0x694(r30)
/* 8070A004  4B 94 BF 19 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_8070A008:
/* 8070A008  38 60 00 01 */	li r3, 1
/* 8070A00C  39 61 00 30 */	addi r11, r1, 0x30
/* 8070A010  4B C5 82 15 */	bl _restgpr_28
/* 8070A014  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8070A018  7C 08 03 A6 */	mtlr r0
/* 8070A01C  38 21 00 30 */	addi r1, r1, 0x30
/* 8070A020  4E 80 00 20 */	blr 
