lbl_8078A400:
/* 8078A400  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8078A404  7C 08 02 A6 */	mflr r0
/* 8078A408  90 01 00 24 */	stw r0, 0x24(r1)
/* 8078A40C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8078A410  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8078A414  7C 7E 1B 78 */	mr r30, r3
/* 8078A418  3C 60 80 79 */	lis r3, lit_3767@ha /* 0x8078DDA4@ha */
/* 8078A41C  3B E3 DD A4 */	addi r31, r3, lit_3767@l /* 0x8078DDA4@l */
/* 8078A420  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8078A424  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8078A428  38 80 00 00 */	li r4, 0
/* 8078A42C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8078A430  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8078A434  4B A1 93 91 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8078A438  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8078A43C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8078A440  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 8078A444  80 84 00 04 */	lwz r4, 4(r4)
/* 8078A448  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8078A44C  4B A1 A9 55 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8078A450  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8078A454  4B 88 38 71 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8078A458  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 8078A45C  2C 00 00 03 */	cmpwi r0, 3
/* 8078A460  40 82 00 60 */	bne lbl_8078A4C0
/* 8078A464  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8078A468  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8078A46C  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 8078A470  EC 20 18 2A */	fadds f1, f0, f3
/* 8078A474  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8078A478  D0 01 00 08 */	stfs f0, 8(r1)
/* 8078A47C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8078A480  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8078A484  80 7E 06 C8 */	lwz r3, 0x6c8(r30)
/* 8078A488  38 80 00 01 */	li r4, 1
/* 8078A48C  80 BE 05 B8 */	lwz r5, 0x5b8(r30)
/* 8078A490  38 C1 00 08 */	addi r6, r1, 8
/* 8078A494  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8078A498  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 8078A49C  C0 9E 07 B8 */	lfs f4, 0x7b8(r30)
/* 8078A4A0  38 FE 08 10 */	addi r7, r30, 0x810
/* 8078A4A4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8078A4A8  39 20 00 00 */	li r9, 0
/* 8078A4AC  C0 BF 00 1C */	lfs f5, 0x1c(r31)
/* 8078A4B0  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 8078A4B4  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 8078A4B8  4B 8A 44 59 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8078A4BC  90 7E 06 C8 */	stw r3, 0x6c8(r30)
lbl_8078A4C0:
/* 8078A4C0  38 60 00 01 */	li r3, 1
/* 8078A4C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8078A4C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8078A4CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8078A4D0  7C 08 03 A6 */	mtlr r0
/* 8078A4D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8078A4D8  4E 80 00 20 */	blr 
