lbl_806F7FD0:
/* 806F7FD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806F7FD4  7C 08 02 A6 */	mflr r0
/* 806F7FD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 806F7FDC  39 61 00 30 */	addi r11, r1, 0x30
/* 806F7FE0  4B C6 A1 FD */	bl _savegpr_29
/* 806F7FE4  7C 7D 1B 78 */	mr r29, r3
/* 806F7FE8  3C 60 80 70 */	lis r3, lit_3788@ha /* 0x806FA3A4@ha */
/* 806F7FEC  3B E3 A3 A4 */	addi r31, r3, lit_3788@l /* 0x806FA3A4@l */
/* 806F7FF0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806F7FF4  83 C3 00 04 */	lwz r30, 4(r3)
/* 806F7FF8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806F7FFC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806F8000  38 80 00 00 */	li r4, 0
/* 806F8004  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806F8008  38 DD 01 0C */	addi r6, r29, 0x10c
/* 806F800C  4B AA B7 B9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806F8010  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806F8014  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806F8018  80 9E 00 04 */	lwz r4, 4(r30)
/* 806F801C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 806F8020  4B AA CD 81 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806F8024  80 9E 00 04 */	lwz r4, 4(r30)
/* 806F8028  80 7D 06 60 */	lwz r3, 0x660(r29)
/* 806F802C  38 84 00 58 */	addi r4, r4, 0x58
/* 806F8030  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806F8034  FC 00 00 1E */	fctiwz f0, f0
/* 806F8038  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806F803C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 806F8040  4B 91 55 A9 */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 806F8044  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806F8048  4B 91 91 79 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 806F804C  80 7D 06 A0 */	lwz r3, 0x6a0(r29)
/* 806F8050  3C 03 FF FB */	addis r0, r3, 0xfffb
/* 806F8054  28 00 64 FF */	cmplwi r0, 0x64ff
/* 806F8058  41 82 00 5C */	beq lbl_806F80B4
/* 806F805C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806F8060  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806F8064  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 806F8068  EC 20 18 2A */	fadds f1, f0, f3
/* 806F806C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806F8070  D0 01 00 08 */	stfs f0, 8(r1)
/* 806F8074  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806F8078  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806F807C  38 80 00 01 */	li r4, 1
/* 806F8080  7F C5 F3 78 */	mr r5, r30
/* 806F8084  38 C1 00 08 */	addi r6, r1, 8
/* 806F8088  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 806F808C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806F8090  C0 9D 07 7C */	lfs f4, 0x77c(r29)
/* 806F8094  38 FD 07 D4 */	addi r7, r29, 0x7d4
/* 806F8098  39 1D 01 0C */	addi r8, r29, 0x10c
/* 806F809C  39 20 00 00 */	li r9, 0
/* 806F80A0  C0 BF 00 08 */	lfs f5, 8(r31)
/* 806F80A4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 806F80A8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 806F80AC  4B 93 68 65 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806F80B0  90 7D 06 A0 */	stw r3, 0x6a0(r29)
lbl_806F80B4:
/* 806F80B4  38 60 00 01 */	li r3, 1
/* 806F80B8  39 61 00 30 */	addi r11, r1, 0x30
/* 806F80BC  4B C6 A1 6D */	bl _restgpr_29
/* 806F80C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806F80C4  7C 08 03 A6 */	mtlr r0
/* 806F80C8  38 21 00 30 */	addi r1, r1, 0x30
/* 806F80CC  4E 80 00 20 */	blr 
