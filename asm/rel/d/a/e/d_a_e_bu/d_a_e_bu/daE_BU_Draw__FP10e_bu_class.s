lbl_80691458:
/* 80691458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8069145C  7C 08 02 A6 */	mflr r0
/* 80691460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80691464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80691468  93 C1 00 08 */	stw r30, 8(r1)
/* 8069146C  7C 7E 1B 78 */	mr r30, r3
/* 80691470  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80691474  83 E3 00 04 */	lwz r31, 4(r3)
/* 80691478  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8069147C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80691480  38 80 00 00 */	li r4, 0
/* 80691484  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80691488  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8069148C  4B B1 23 39 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80691490  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80691494  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80691498  80 9F 00 04 */	lwz r4, 4(r31)
/* 8069149C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 806914A0  4B B1 39 01 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806914A4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806914A8  4B 97 FD 19 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 806914AC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806914B0  C0 3E 07 A4 */	lfs f1, 0x7a4(r30)
/* 806914B4  3C 80 80 69 */	lis r4, lit_3889@ha /* 0x806946D0@ha */
/* 806914B8  C0 44 46 D0 */	lfs f2, lit_3889@l(r4)  /* 0x806946D0@l */
/* 806914BC  3C 80 80 69 */	lis r4, l_HIO@ha /* 0x80694968@ha */
/* 806914C0  38 84 49 68 */	addi r4, r4, l_HIO@l /* 0x80694968@l */
/* 806914C4  C0 04 00 08 */	lfs f0, 8(r4)
/* 806914C8  EC 42 00 32 */	fmuls f2, f2, f0
/* 806914CC  38 9E 07 FC */	addi r4, r30, 0x7fc
/* 806914D0  38 A0 00 00 */	li r5, 0
/* 806914D4  3C C0 80 69 */	lis r6, lit_3790@ha /* 0x80694698@ha */
/* 806914D8  C0 66 46 98 */	lfs f3, lit_3790@l(r6)  /* 0x80694698@l */
/* 806914DC  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 806914E0  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 806914E4  4B 99 BB D1 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 806914E8  38 60 00 01 */	li r3, 1
/* 806914EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806914F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806914F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806914F8  7C 08 03 A6 */	mtlr r0
/* 806914FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80691500  4E 80 00 20 */	blr 
