lbl_80BA7440:
/* 80BA7440  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BA7444  7C 08 02 A6 */	mflr r0
/* 80BA7448  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BA744C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BA7450  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BA7454  7C 7E 1B 78 */	mr r30, r3
/* 80BA7458  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA745C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA7460  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80BA7464  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80BA7468  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80BA746C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80BA7470  40 82 00 0C */	bne lbl_80BA747C
/* 80BA7474  38 60 00 00 */	li r3, 0
/* 80BA7478  48 00 01 14 */	b lbl_80BA758C
lbl_80BA747C:
/* 80BA747C  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80BA7480  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BA7484  40 82 00 18 */	bne lbl_80BA749C
/* 80BA7488  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 80BA748C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80BA7490  40 82 00 0C */	bne lbl_80BA749C
/* 80BA7494  38 60 00 00 */	li r3, 0
/* 80BA7498  48 00 00 F4 */	b lbl_80BA758C
lbl_80BA749C:
/* 80BA749C  3C 60 80 BA */	lis r3, l_check_pos@ha /* 0x80BA7D04@ha */
/* 80BA74A0  C4 03 7D 04 */	lfsu f0, l_check_pos@l(r3)  /* 0x80BA7D04@l */
/* 80BA74A4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BA74A8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BA74AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BA74B0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BA74B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BA74B8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BA74BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BA74C0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80BA74C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BA74C8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80BA74CC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BA74D0  38 61 00 08 */	addi r3, r1, 8
/* 80BA74D4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BA74D8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BA74DC  4B 6B F6 59 */	bl __mi__4cXyzCFRC3Vec
/* 80BA74E0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BA74E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BA74E8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BA74EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BA74F0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BA74F4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BA74F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BA74FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BA7500  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80BA7504  7C 00 00 D0 */	neg r0, r0
/* 80BA7508  7C 04 07 34 */	extsh r4, r0
/* 80BA750C  4B 46 4F 29 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BA7510  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BA7514  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BA7518  38 81 00 14 */	addi r4, r1, 0x14
/* 80BA751C  7C 85 23 78 */	mr r5, r4
/* 80BA7520  4B 79 F8 4D */	bl PSMTXMultVec
/* 80BA7524  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BA7528  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BA752C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80BA7530  40 81 00 58 */	ble lbl_80BA7588
/* 80BA7534  3C 60 80 BA */	lis r3, lit_3834@ha /* 0x80BA7D30@ha */
/* 80BA7538  C0 03 7D 30 */	lfs f0, lit_3834@l(r3)  /* 0x80BA7D30@l */
/* 80BA753C  EC 00 08 2A */	fadds f0, f0, f1
/* 80BA7540  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BA7544  40 80 00 44 */	bge lbl_80BA7588
/* 80BA7548  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80BA754C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BA7550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA7554  40 81 00 34 */	ble lbl_80BA7588
/* 80BA7558  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BA755C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA7560  40 80 00 28 */	bge lbl_80BA7588
/* 80BA7564  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80BA7568  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BA756C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA7570  40 81 00 18 */	ble lbl_80BA7588
/* 80BA7574  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BA7578  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA757C  40 80 00 0C */	bge lbl_80BA7588
/* 80BA7580  38 60 00 01 */	li r3, 1
/* 80BA7584  48 00 00 08 */	b lbl_80BA758C
lbl_80BA7588:
/* 80BA7588  38 60 00 00 */	li r3, 0
lbl_80BA758C:
/* 80BA758C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BA7590  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BA7594  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BA7598  7C 08 03 A6 */	mtlr r0
/* 80BA759C  38 21 00 40 */	addi r1, r1, 0x40
/* 80BA75A0  4E 80 00 20 */	blr 
