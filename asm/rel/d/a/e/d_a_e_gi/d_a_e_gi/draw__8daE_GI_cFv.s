lbl_806CD5E0:
/* 806CD5E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806CD5E4  7C 08 02 A6 */	mflr r0
/* 806CD5E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 806CD5EC  39 61 00 60 */	addi r11, r1, 0x60
/* 806CD5F0  4B C9 4B E5 */	bl _savegpr_27
/* 806CD5F4  7C 7F 1B 78 */	mr r31, r3
/* 806CD5F8  3C 60 80 6D */	lis r3, lit_3907@ha /* 0x806D0E60@ha */
/* 806CD5FC  3B C3 0E 60 */	addi r30, r3, lit_3907@l /* 0x806D0E60@l */
/* 806CD600  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806CD604  83 A3 00 04 */	lwz r29, 4(r3)
/* 806CD608  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806CD60C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806CD610  38 80 00 00 */	li r4, 0
/* 806CD614  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806CD618  38 DF 01 0C */	addi r6, r31, 0x10c
/* 806CD61C  4B AD 61 A9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806CD620  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806CD624  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806CD628  80 9D 00 04 */	lwz r4, 4(r29)
/* 806CD62C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806CD630  4B AD 77 71 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806CD634  83 9D 00 04 */	lwz r28, 4(r29)
/* 806CD638  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 806CD63C  80 63 00 08 */	lwz r3, 8(r3)
/* 806CD640  28 03 00 00 */	cmplwi r3, 0
/* 806CD644  41 82 00 24 */	beq lbl_806CD668
/* 806CD648  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 806CD64C  38 80 00 02 */	li r4, 2
/* 806CD650  81 83 00 00 */	lwz r12, 0(r3)
/* 806CD654  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806CD658  7D 89 03 A6 */	mtctr r12
/* 806CD65C  4E 80 04 21 */	bctrl 
/* 806CD660  A8 1F 06 A2 */	lha r0, 0x6a2(r31)
/* 806CD664  B0 03 00 00 */	sth r0, 0(r3)
lbl_806CD668:
/* 806CD668  C0 3F 06 60 */	lfs f1, 0x660(r31)
/* 806CD66C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806CD670  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806CD674  41 82 01 1C */	beq lbl_806CD790
/* 806CD678  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 806CD67C  83 63 00 00 */	lwz r27, 0(r3)
/* 806CD680  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806CD684  38 80 00 00 */	li r4, 0
/* 806CD688  81 83 00 00 */	lwz r12, 0(r3)
/* 806CD68C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806CD690  7D 89 03 A6 */	mtctr r12
/* 806CD694  4E 80 04 21 */	bctrl 
/* 806CD698  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 806CD69C  FC 00 00 1E */	fctiwz f0, f0
/* 806CD6A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806CD6A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806CD6A8  B0 03 00 00 */	sth r0, 0(r3)
/* 806CD6AC  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806CD6B0  38 80 00 00 */	li r4, 0
/* 806CD6B4  81 83 00 00 */	lwz r12, 0(r3)
/* 806CD6B8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806CD6BC  7D 89 03 A6 */	mtctr r12
/* 806CD6C0  4E 80 04 21 */	bctrl 
/* 806CD6C4  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 806CD6C8  FC 00 00 1E */	fctiwz f0, f0
/* 806CD6CC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806CD6D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806CD6D4  B0 03 00 02 */	sth r0, 2(r3)
/* 806CD6D8  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806CD6DC  38 80 00 00 */	li r4, 0
/* 806CD6E0  81 83 00 00 */	lwz r12, 0(r3)
/* 806CD6E4  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806CD6E8  7D 89 03 A6 */	mtctr r12
/* 806CD6EC  4E 80 04 21 */	bctrl 
/* 806CD6F0  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 806CD6F4  FC 00 00 1E */	fctiwz f0, f0
/* 806CD6F8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 806CD6FC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 806CD700  B0 03 00 04 */	sth r0, 4(r3)
/* 806CD704  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 806CD708  83 63 00 04 */	lwz r27, 4(r3)
/* 806CD70C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806CD710  38 80 00 00 */	li r4, 0
/* 806CD714  81 83 00 00 */	lwz r12, 0(r3)
/* 806CD718  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806CD71C  7D 89 03 A6 */	mtctr r12
/* 806CD720  4E 80 04 21 */	bctrl 
/* 806CD724  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 806CD728  FC 00 00 1E */	fctiwz f0, f0
/* 806CD72C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806CD730  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806CD734  B0 03 00 00 */	sth r0, 0(r3)
/* 806CD738  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806CD73C  38 80 00 00 */	li r4, 0
/* 806CD740  81 83 00 00 */	lwz r12, 0(r3)
/* 806CD744  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806CD748  7D 89 03 A6 */	mtctr r12
/* 806CD74C  4E 80 04 21 */	bctrl 
/* 806CD750  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 806CD754  FC 00 00 1E */	fctiwz f0, f0
/* 806CD758  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806CD75C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806CD760  B0 03 00 02 */	sth r0, 2(r3)
/* 806CD764  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806CD768  38 80 00 00 */	li r4, 0
/* 806CD76C  81 83 00 00 */	lwz r12, 0(r3)
/* 806CD770  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806CD774  7D 89 03 A6 */	mtctr r12
/* 806CD778  4E 80 04 21 */	bctrl 
/* 806CD77C  C0 1F 06 60 */	lfs f0, 0x660(r31)
/* 806CD780  FC 00 00 1E */	fctiwz f0, f0
/* 806CD784  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806CD788  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806CD78C  B0 03 00 04 */	sth r0, 4(r3)
lbl_806CD790:
/* 806CD790  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806CD794  4B 94 3A 2D */	bl entryDL__16mDoExt_McaMorfSOFv
/* 806CD798  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806CD79C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806CD7A0  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 806CD7A4  EC 20 18 2A */	fadds f1, f0, f3
/* 806CD7A8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806CD7AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 806CD7B0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806CD7B4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806CD7B8  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 806CD7BC  38 80 00 01 */	li r4, 1
/* 806CD7C0  7F A5 EB 78 */	mr r5, r29
/* 806CD7C4  38 C1 00 08 */	addi r6, r1, 8
/* 806CD7C8  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 806CD7CC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 806CD7D0  C0 9F 07 84 */	lfs f4, 0x784(r31)
/* 806CD7D4  38 FF 07 DC */	addi r7, r31, 0x7dc
/* 806CD7D8  39 1F 01 0C */	addi r8, r31, 0x10c
/* 806CD7DC  39 20 00 00 */	li r9, 0
/* 806CD7E0  C0 BE 00 08 */	lfs f5, 8(r30)
/* 806CD7E4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 806CD7E8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 806CD7EC  4B 96 11 25 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806CD7F0  90 7F 06 78 */	stw r3, 0x678(r31)
/* 806CD7F4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806CD7F8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806CD7FC  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 806CD800  80 84 00 04 */	lwz r4, 4(r4)
/* 806CD804  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806CD808  4B AD 75 99 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806CD80C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806CD810  4B 94 04 B5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 806CD814  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CD818  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CD81C  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 806CD820  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 806CD824  80 BF 05 B8 */	lwz r5, 0x5b8(r31)
/* 806CD828  4B 98 86 F5 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 806CD82C  38 60 00 01 */	li r3, 1
/* 806CD830  39 61 00 60 */	addi r11, r1, 0x60
/* 806CD834  4B C9 49 ED */	bl _restgpr_27
/* 806CD838  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806CD83C  7C 08 03 A6 */	mtlr r0
/* 806CD840  38 21 00 60 */	addi r1, r1, 0x60
/* 806CD844  4E 80 00 20 */	blr 
