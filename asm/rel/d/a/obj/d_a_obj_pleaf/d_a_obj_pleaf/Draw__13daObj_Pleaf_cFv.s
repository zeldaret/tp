lbl_80CB14D4:
/* 80CB14D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB14D8  7C 08 02 A6 */	mflr r0
/* 80CB14DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB14E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB14E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB14E8  7C 7E 1B 78 */	mr r30, r3
/* 80CB14EC  3C 60 80 CB */	lis r3, m__19daObj_Pleaf_Param_c@ha
/* 80CB14F0  3B E3 18 64 */	addi r31, r3, m__19daObj_Pleaf_Param_c@l
/* 80CB14F4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CB14F8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CB14FC  38 80 00 00 */	li r4, 0
/* 80CB1500  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CB1504  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CB1508  4B 4F 22 BC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CB150C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CB1510  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CB1514  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80CB1518  80 84 00 04 */	lwz r4, 4(r4)
/* 80CB151C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CB1520  4B 4F 38 80 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CB1524  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CB1528  4B 35 C7 9C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CB152C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80CB1530  C0 9E 09 40 */	lfs f4, 0x940(r30)
/* 80CB1534  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 80CB1538  41 82 00 44 */	beq lbl_80CB157C
/* 80CB153C  80 7E 09 44 */	lwz r3, 0x944(r30)
/* 80CB1540  38 80 00 01 */	li r4, 1
/* 80CB1544  80 BE 05 74 */	lwz r5, 0x574(r30)
/* 80CB1548  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80CB154C  38 FF 00 00 */	addi r7, r31, 0
/* 80CB1550  C0 27 00 0C */	lfs f1, 0xc(r7)
/* 80CB1554  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80CB1558  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80CB155C  38 FE 07 E0 */	addi r7, r30, 0x7e0
/* 80CB1560  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80CB1564  39 20 00 00 */	li r9, 0
/* 80CB1568  C0 BF 00 28 */	lfs f5, 0x28(r31)
/* 80CB156C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80CB1570  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80CB1574  4B 37 D3 9C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80CB1578  90 7E 09 44 */	stw r3, 0x944(r30)
lbl_80CB157C:
/* 80CB157C  38 60 00 01 */	li r3, 1
/* 80CB1580  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB1584  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB1588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB158C  7C 08 03 A6 */	mtlr r0
/* 80CB1590  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB1594  4E 80 00 20 */	blr 
