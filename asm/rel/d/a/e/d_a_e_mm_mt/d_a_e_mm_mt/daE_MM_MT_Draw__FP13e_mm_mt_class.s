lbl_80722F78:
/* 80722F78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80722F7C  7C 08 02 A6 */	mflr r0
/* 80722F80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80722F84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80722F88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80722F8C  7C 7E 1B 78 */	mr r30, r3
/* 80722F90  3C 60 80 72 */	lis r3, lit_3789@ha /* 0x80725858@ha */
/* 80722F94  3B E3 58 58 */	addi r31, r3, lit_3789@l /* 0x80725858@l */
/* 80722F98  80 1E 06 5C */	lwz r0, 0x65c(r30)
/* 80722F9C  90 1E 05 24 */	stw r0, 0x524(r30)
/* 80722FA0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80722FA4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80722FA8  38 80 00 00 */	li r4, 0
/* 80722FAC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80722FB0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80722FB4  4B A8 08 11 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80722FB8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80722FBC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80722FC0  80 9E 06 5C */	lwz r4, 0x65c(r30)
/* 80722FC4  80 84 00 04 */	lwz r4, 4(r4)
/* 80722FC8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80722FCC  4B A8 1D D5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80722FD0  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 80722FD4  4B 8E AC F1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80722FD8  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80722FDC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80722FE0  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80722FE4  EC 20 18 2A */	fadds f1, f0, f3
/* 80722FE8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80722FEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80722FF0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80722FF4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80722FF8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80722FFC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80723000  40 82 00 40 */	bne lbl_80723040
/* 80723004  80 7E 06 60 */	lwz r3, 0x660(r30)
/* 80723008  38 80 00 01 */	li r4, 1
/* 8072300C  80 BE 06 5C */	lwz r5, 0x65c(r30)
/* 80723010  38 C1 00 08 */	addi r6, r1, 8
/* 80723014  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80723018  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8072301C  C0 9E 07 84 */	lfs f4, 0x784(r30)
/* 80723020  38 FE 07 DC */	addi r7, r30, 0x7dc
/* 80723024  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80723028  39 20 00 00 */	li r9, 0
/* 8072302C  C0 BF 00 08 */	lfs f5, 8(r31)
/* 80723030  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80723034  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80723038  4B 90 B8 D9 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8072303C  90 7E 06 60 */	stw r3, 0x660(r30)
lbl_80723040:
/* 80723040  38 60 00 01 */	li r3, 1
/* 80723044  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80723048  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8072304C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80723050  7C 08 03 A6 */	mtlr r0
/* 80723054  38 21 00 20 */	addi r1, r1, 0x20
/* 80723058  4E 80 00 20 */	blr 
