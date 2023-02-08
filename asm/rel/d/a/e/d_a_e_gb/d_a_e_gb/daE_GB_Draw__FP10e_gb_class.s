lbl_806C1E9C:
/* 806C1E9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806C1EA0  7C 08 02 A6 */	mflr r0
/* 806C1EA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806C1EA8  39 61 00 40 */	addi r11, r1, 0x40
/* 806C1EAC  4B CA 03 21 */	bl _savegpr_25
/* 806C1EB0  7C 7D 1B 78 */	mr r29, r3
/* 806C1EB4  3C 60 80 6C */	lis r3, lit_3906@ha /* 0x806C74E8@ha */
/* 806C1EB8  3B E3 74 E8 */	addi r31, r3, lit_3906@l /* 0x806C74E8@l */
/* 806C1EBC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806C1EC0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806C1EC4  38 80 00 00 */	li r4, 0
/* 806C1EC8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806C1ECC  38 DD 01 0C */	addi r6, r29, 0x10c
/* 806C1ED0  4B AE 18 F5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806C1ED4  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806C1ED8  83 63 00 04 */	lwz r27, 4(r3)
/* 806C1EDC  7F 7E DB 78 */	mr r30, r27
/* 806C1EE0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806C1EE4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806C1EE8  80 9B 00 04 */	lwz r4, 4(r27)
/* 806C1EEC  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806C1EF0  4B AE 2E B1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806C1EF4  80 9B 00 04 */	lwz r4, 4(r27)
/* 806C1EF8  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 806C1EFC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806C1F00  38 84 00 58 */	addi r4, r4, 0x58
/* 806C1F04  4B 94 B8 A5 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 806C1F08  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806C1F0C  4B 94 E7 75 */	bl entryDL__14mDoExt_McaMorfFv
/* 806C1F10  80 9D 06 6C */	lwz r4, 0x66c(r29)
/* 806C1F14  28 04 00 00 */	cmplwi r4, 0
/* 806C1F18  41 82 00 20 */	beq lbl_806C1F38
/* 806C1F1C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806C1F20  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806C1F24  80 84 00 04 */	lwz r4, 4(r4)
/* 806C1F28  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806C1F2C  4B AE 2E 75 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806C1F30  80 7D 06 6C */	lwz r3, 0x66c(r29)
/* 806C1F34  4B 94 BD 91 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_806C1F38:
/* 806C1F38  88 1D 09 68 */	lbz r0, 0x968(r29)
/* 806C1F3C  7C 00 07 75 */	extsb. r0, r0
/* 806C1F40  41 82 01 1C */	beq lbl_806C205C
/* 806C1F44  80 1D 08 6C */	lwz r0, 0x86c(r29)
/* 806C1F48  28 00 00 00 */	cmplwi r0, 0
/* 806C1F4C  41 82 00 74 */	beq lbl_806C1FC0
/* 806C1F50  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806C1F54  80 83 00 04 */	lwz r4, 4(r3)
/* 806C1F58  7C 9E 23 78 */	mr r30, r4
/* 806C1F5C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806C1F60  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806C1F64  80 84 00 04 */	lwz r4, 4(r4)
/* 806C1F68  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806C1F6C  4B AE 2E 35 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806C1F70  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806C1F74  4B 94 E7 0D */	bl entryDL__14mDoExt_McaMorfFv
/* 806C1F78  3B 20 00 00 */	li r25, 0
/* 806C1F7C  3B 80 00 00 */	li r28, 0
/* 806C1F80  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806C1F84  3B 63 CA 54 */	addi r27, r3, g_env_light@l /* 0x8042CA54@l */
lbl_806C1F88:
/* 806C1F88  3B 5C 08 28 */	addi r26, r28, 0x828
/* 806C1F8C  7C 9D D0 2E */	lwzx r4, r29, r26
/* 806C1F90  28 04 00 00 */	cmplwi r4, 0
/* 806C1F94  41 82 00 1C */	beq lbl_806C1FB0
/* 806C1F98  7F 63 DB 78 */	mr r3, r27
/* 806C1F9C  80 84 00 04 */	lwz r4, 4(r4)
/* 806C1FA0  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806C1FA4  4B AE 2D FD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806C1FA8  7C 7D D0 2E */	lwzx r3, r29, r26
/* 806C1FAC  4B 94 BD 19 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_806C1FB0:
/* 806C1FB0  3B 39 00 01 */	addi r25, r25, 1
/* 806C1FB4  2C 19 00 11 */	cmpwi r25, 0x11
/* 806C1FB8  3B 9C 00 04 */	addi r28, r28, 4
/* 806C1FBC  41 80 FF CC */	blt lbl_806C1F88
lbl_806C1FC0:
/* 806C1FC0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806C1FC4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806C1FC8  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 806C1FCC  EC 20 18 2A */	fadds f1, f0, f3
/* 806C1FD0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806C1FD4  D0 01 00 08 */	stfs f0, 8(r1)
/* 806C1FD8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806C1FDC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806C1FE0  80 7D 06 94 */	lwz r3, 0x694(r29)
/* 806C1FE4  38 80 00 01 */	li r4, 1
/* 806C1FE8  7F C5 F3 78 */	mr r5, r30
/* 806C1FEC  38 C1 00 08 */	addi r6, r1, 8
/* 806C1FF0  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806C1FF4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806C1FF8  C0 9D 0D 20 */	lfs f4, 0xd20(r29)
/* 806C1FFC  38 FD 0D 78 */	addi r7, r29, 0xd78
/* 806C2000  39 1D 01 0C */	addi r8, r29, 0x10c
/* 806C2004  39 20 00 00 */	li r9, 0
/* 806C2008  C0 BF 00 08 */	lfs f5, 8(r31)
/* 806C200C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 806C2010  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 806C2014  4B 96 C8 FD */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806C2018  90 7D 06 94 */	stw r3, 0x694(r29)
/* 806C201C  3B 20 00 00 */	li r25, 0
/* 806C2020  3B C0 00 00 */	li r30, 0
/* 806C2024  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C2028  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C202C  3B 63 61 C0 */	addi r27, r3, 0x61c0
lbl_806C2030:
/* 806C2030  38 1E 08 28 */	addi r0, r30, 0x828
/* 806C2034  7C BD 00 2E */	lwzx r5, r29, r0
/* 806C2038  28 05 00 00 */	cmplwi r5, 0
/* 806C203C  41 82 00 10 */	beq lbl_806C204C
/* 806C2040  7F 63 DB 78 */	mr r3, r27
/* 806C2044  80 9D 06 94 */	lwz r4, 0x694(r29)
/* 806C2048  4B 99 3E D5 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_806C204C:
/* 806C204C  3B 39 00 01 */	addi r25, r25, 1
/* 806C2050  2C 19 00 11 */	cmpwi r25, 0x11
/* 806C2054  3B DE 00 04 */	addi r30, r30, 4
/* 806C2058  41 80 FF D8 */	blt lbl_806C2030
lbl_806C205C:
/* 806C205C  38 60 00 01 */	li r3, 1
/* 806C2060  39 61 00 40 */	addi r11, r1, 0x40
/* 806C2064  4B CA 01 B5 */	bl _restgpr_25
/* 806C2068  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806C206C  7C 08 03 A6 */	mtlr r0
/* 806C2070  38 21 00 40 */	addi r1, r1, 0x40
/* 806C2074  4E 80 00 20 */	blr 
