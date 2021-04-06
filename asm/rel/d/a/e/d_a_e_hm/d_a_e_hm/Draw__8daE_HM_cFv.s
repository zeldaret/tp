lbl_806E434C:
/* 806E434C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E4350  7C 08 02 A6 */	mflr r0
/* 806E4354  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E4358  39 61 00 40 */	addi r11, r1, 0x40
/* 806E435C  4B C7 DE 79 */	bl _savegpr_27
/* 806E4360  7C 7F 1B 78 */	mr r31, r3
/* 806E4364  3C 60 80 6E */	lis r3, lit_3791@ha /* 0x806E5920@ha */
/* 806E4368  3B C3 59 20 */	addi r30, r3, lit_3791@l /* 0x806E5920@l */
/* 806E436C  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 806E4370  83 A3 00 04 */	lwz r29, 4(r3)
/* 806E4374  A8 1F 05 D2 */	lha r0, 0x5d2(r31)
/* 806E4378  2C 00 00 04 */	cmpwi r0, 4
/* 806E437C  41 82 00 FC */	beq lbl_806E4478
/* 806E4380  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806E4384  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806E4388  38 80 00 00 */	li r4, 0
/* 806E438C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806E4390  38 DF 01 0C */	addi r6, r31, 0x10c
/* 806E4394  4B AB F4 31 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806E4398  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806E439C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806E43A0  80 9D 00 04 */	lwz r4, 4(r29)
/* 806E43A4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806E43A8  4B AC 09 F9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806E43AC  80 9D 00 04 */	lwz r4, 4(r29)
/* 806E43B0  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 806E43B4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806E43B8  38 84 00 58 */	addi r4, r4, 0x58
/* 806E43BC  4B 92 93 1D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 806E43C0  88 1F 06 0C */	lbz r0, 0x60c(r31)
/* 806E43C4  28 00 00 00 */	cmplwi r0, 0
/* 806E43C8  40 82 00 18 */	bne lbl_806E43E0
/* 806E43CC  80 9D 00 04 */	lwz r4, 4(r29)
/* 806E43D0  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 806E43D4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806E43D8  38 84 00 58 */	addi r4, r4, 0x58
/* 806E43DC  4B 92 93 CD */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_806E43E0:
/* 806E43E0  88 1F 06 0C */	lbz r0, 0x60c(r31)
/* 806E43E4  28 00 00 00 */	cmplwi r0, 0
/* 806E43E8  41 82 00 88 */	beq lbl_806E4470
/* 806E43EC  83 9D 00 04 */	lwz r28, 4(r29)
/* 806E43F0  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 806E43F4  83 63 00 00 */	lwz r27, 0(r3)
/* 806E43F8  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806E43FC  38 80 00 00 */	li r4, 0
/* 806E4400  81 83 00 00 */	lwz r12, 0(r3)
/* 806E4404  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806E4408  7D 89 03 A6 */	mtctr r12
/* 806E440C  4E 80 04 21 */	bctrl 
/* 806E4410  C0 3E 01 44 */	lfs f1, 0x144(r30)
/* 806E4414  C0 1F 05 F8 */	lfs f0, 0x5f8(r31)
/* 806E4418  EC 01 00 32 */	fmuls f0, f1, f0
/* 806E441C  FC 00 00 1E */	fctiwz f0, f0
/* 806E4420  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806E4424  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806E4428  98 03 00 00 */	stb r0, 0(r3)
/* 806E442C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806E4430  38 80 00 00 */	li r4, 0
/* 806E4434  81 83 00 00 */	lwz r12, 0(r3)
/* 806E4438  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806E443C  7D 89 03 A6 */	mtctr r12
/* 806E4440  4E 80 04 21 */	bctrl 
/* 806E4444  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806E4448  C0 1F 05 F8 */	lfs f0, 0x5f8(r31)
/* 806E444C  EC 01 00 32 */	fmuls f0, f1, f0
/* 806E4450  FC 00 00 1E */	fctiwz f0, f0
/* 806E4454  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806E4458  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806E445C  98 03 00 01 */	stb r0, 1(r3)
/* 806E4460  38 7C 00 58 */	addi r3, r28, 0x58
/* 806E4464  80 9F 06 10 */	lwz r4, 0x610(r31)
/* 806E4468  80 84 00 14 */	lwz r4, 0x14(r4)
/* 806E446C  4B C4 B4 15 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_806E4470:
/* 806E4470  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 806E4474  4B 92 CD 4D */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_806E4478:
/* 806E4478  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806E447C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806E4480  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 806E4484  EC 20 18 2A */	fadds f1, f0, f3
/* 806E4488  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806E448C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806E4490  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806E4494  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806E4498  80 7F 06 2C */	lwz r3, 0x62c(r31)
/* 806E449C  38 80 00 01 */	li r4, 1
/* 806E44A0  7F A5 EB 78 */	mr r5, r29
/* 806E44A4  38 C1 00 08 */	addi r6, r1, 8
/* 806E44A8  C0 3E 01 48 */	lfs f1, 0x148(r30)
/* 806E44AC  C0 5E 01 4C */	lfs f2, 0x14c(r30)
/* 806E44B0  C0 9F 07 AC */	lfs f4, 0x7ac(r31)
/* 806E44B4  38 FF 08 04 */	addi r7, r31, 0x804
/* 806E44B8  39 1F 01 0C */	addi r8, r31, 0x10c
/* 806E44BC  39 20 00 00 */	li r9, 0
/* 806E44C0  C0 BE 00 08 */	lfs f5, 8(r30)
/* 806E44C4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 806E44C8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 806E44CC  4B 94 A4 45 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806E44D0  90 7F 06 2C */	stw r3, 0x62c(r31)
/* 806E44D4  38 60 00 01 */	li r3, 1
/* 806E44D8  39 61 00 40 */	addi r11, r1, 0x40
/* 806E44DC  4B C7 DD 45 */	bl _restgpr_27
/* 806E44E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E44E4  7C 08 03 A6 */	mtlr r0
/* 806E44E8  38 21 00 40 */	addi r1, r1, 0x40
/* 806E44EC  4E 80 00 20 */	blr 
