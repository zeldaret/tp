lbl_80860638:
/* 80860638  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8086063C  7C 08 02 A6 */	mflr r0
/* 80860640  90 01 00 44 */	stw r0, 0x44(r1)
/* 80860644  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80860648  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8086064C  7C 7F 1B 78 */	mr r31, r3
/* 80860650  3C 60 80 86 */	lis r3, lit_3823@ha
/* 80860654  3B C3 0B 40 */	addi r30, r3, lit_3823@l
/* 80860658  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8086065C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80860660  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80860664  FC 40 08 90 */	fmr f2, f1
/* 80860668  FC 60 08 90 */	fmr f3, f1
/* 8086066C  4B AE 62 7C */	b PSMTXTrans
/* 80860670  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80860674  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80860678  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8086067C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80860680  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80860684  28 03 00 00 */	cmplwi r3, 0
/* 80860688  41 82 01 54 */	beq lbl_808607DC
/* 8086068C  C0 3F 05 90 */	lfs f1, 0x590(r31)
/* 80860690  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80860694  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80860698  40 81 01 44 */	ble lbl_808607DC
/* 8086069C  80 63 00 04 */	lwz r3, 4(r3)
/* 808606A0  80 63 00 60 */	lwz r3, 0x60(r3)
/* 808606A4  80 63 00 00 */	lwz r3, 0(r3)
/* 808606A8  38 00 00 00 */	li r0, 0
/* 808606AC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 808606B0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 808606B4  B0 01 00 08 */	sth r0, 8(r1)
/* 808606B8  38 00 FF 4C */	li r0, -180
/* 808606BC  B0 01 00 0E */	sth r0, 0xe(r1)
/* 808606C0  88 1F 05 8C */	lbz r0, 0x58c(r31)
/* 808606C4  28 00 00 01 */	cmplwi r0, 1
/* 808606C8  40 82 00 0C */	bne lbl_808606D4
/* 808606CC  38 00 FF 9C */	li r0, -100
/* 808606D0  B0 01 00 0E */	sth r0, 0xe(r1)
lbl_808606D4:
/* 808606D4  C0 7E 00 08 */	lfs f3, 8(r30)
/* 808606D8  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 808606DC  A8 01 00 0E */	lha r0, 0xe(r1)
/* 808606E0  C8 3E 00 10 */	lfd f1, 0x10(r30)
/* 808606E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 808606E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 808606EC  3C 00 43 30 */	lis r0, 0x4330
/* 808606F0  90 01 00 20 */	stw r0, 0x20(r1)
/* 808606F4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 808606F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 808606FC  EC 22 00 2A */	fadds f1, f2, f0
/* 80860700  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 80860704  EC 01 00 32 */	fmuls f0, f1, f0
/* 80860708  EC 03 00 2A */	fadds f0, f3, f0
/* 8086070C  FC 00 00 1E */	fctiwz f0, f0
/* 80860710  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80860714  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80860718  B0 01 00 0E */	sth r0, 0xe(r1)
/* 8086071C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80860720  38 80 00 00 */	li r4, 0
/* 80860724  38 A1 00 08 */	addi r5, r1, 8
/* 80860728  81 83 00 00 */	lwz r12, 0(r3)
/* 8086072C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80860730  7D 89 03 A6 */	mtctr r12
/* 80860734  4E 80 04 21 */	bctrl 
/* 80860738  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8086073C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80860740  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80860744  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80860748  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8086074C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80860750  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80860754  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80860758  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8086075C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80860760  38 84 00 24 */	addi r4, r4, 0x24
/* 80860764  4B AE 5D 4C */	b PSMTXCopy
/* 80860768  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8086076C  80 83 00 04 */	lwz r4, 4(r3)
/* 80860770  C0 3F 05 7C */	lfs f1, 0x57c(r31)
/* 80860774  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80860778  38 84 00 58 */	addi r4, r4, 0x58
/* 8086077C  4B 7A CF 5C */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80860780  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80860784  4B 7A CC A4 */	b play__14mDoExt_baseAnmFv
/* 80860788  88 1F 05 8C */	lbz r0, 0x58c(r31)
/* 8086078C  28 00 00 01 */	cmplwi r0, 1
/* 80860790  40 82 00 0C */	bne lbl_8086079C
/* 80860794  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80860798  4B 7A CC 90 */	b play__14mDoExt_baseAnmFv
lbl_8086079C:
/* 8086079C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808607A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808607A4  80 03 5F AC */	lwz r0, 0x5fac(r3)
/* 808607A8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 808607AC  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 808607B0  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 808607B4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 808607B8  4B 7A D5 0C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 808607BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808607C0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 808607C4  80 04 5F 80 */	lwz r0, 0x5f80(r4)
/* 808607C8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 808607CC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 808607D0  90 03 00 48 */	stw r0, 0x48(r3)
/* 808607D4  80 04 5F 84 */	lwz r0, 0x5f84(r4)
/* 808607D8  90 1E 00 4C */	stw r0, 0x4c(r30)
lbl_808607DC:
/* 808607DC  38 60 00 01 */	li r3, 1
/* 808607E0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 808607E4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 808607E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 808607EC  7C 08 03 A6 */	mtlr r0
/* 808607F0  38 21 00 40 */	addi r1, r1, 0x40
/* 808607F4  4E 80 00 20 */	blr 
