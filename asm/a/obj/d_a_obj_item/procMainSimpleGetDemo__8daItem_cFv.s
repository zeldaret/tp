lbl_8015C134:
/* 8015C134  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8015C138  7C 08 02 A6 */	mflr r0
/* 8015C13C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015C140  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8015C144  7C 7F 1B 78 */	mr r31, r3
/* 8015C148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015C14C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015C150  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 8015C154  38 61 00 08 */	addi r3, r1, 8
/* 8015C158  48 00 1E 81 */	bl getItemPos__9daPy_py_cCFv
/* 8015C15C  C0 61 00 08 */	lfs f3, 8(r1)
/* 8015C160  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8015C164  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8015C168  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8015C16C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8015C170  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8015C174  C0 02 9B 98 */	lfs f0, lit_4404(r2)
/* 8015C178  EC 02 00 2A */	fadds f0, f2, f0
/* 8015C17C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8015C180  D0 7F 04 D0 */	stfs f3, 0x4d0(r31)
/* 8015C184  D0 3F 04 D8 */	stfs f1, 0x4d8(r31)
/* 8015C188  7F E3 FB 78 */	mr r3, r31
/* 8015C18C  38 80 00 00 */	li r4, 0
/* 8015C190  4B EB E5 3D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8015C194  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8015C198  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8015C19C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8015C1A0  40 80 00 08 */	bge lbl_8015C1A8
/* 8015C1A4  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
lbl_8015C1A8:
/* 8015C1A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015C1AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015C1B0  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8015C1B4  A8 03 02 30 */	lha r0, 0x230(r3)
/* 8015C1B8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8015C1BC  A8 03 02 32 */	lha r0, 0x232(r3)
/* 8015C1C0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8015C1C4  A8 03 02 34 */	lha r0, 0x234(r3)
/* 8015C1C8  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 8015C1CC  A8 7F 09 46 */	lha r3, 0x946(r31)
/* 8015C1D0  38 03 FF FF */	addi r0, r3, -1
/* 8015C1D4  B0 1F 09 46 */	sth r0, 0x946(r31)
/* 8015C1D8  A8 1F 09 46 */	lha r0, 0x946(r31)
/* 8015C1DC  2C 00 00 00 */	cmpwi r0, 0
/* 8015C1E0  40 80 00 0C */	bge lbl_8015C1EC
/* 8015C1E4  7F E3 FB 78 */	mr r3, r31
/* 8015C1E8  4B EB DA 95 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8015C1EC:
/* 8015C1EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8015C1F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015C1F4  7C 08 03 A6 */	mtlr r0
/* 8015C1F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8015C1FC  4E 80 00 20 */	blr 
