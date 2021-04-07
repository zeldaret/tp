lbl_804E7620:
/* 804E7620  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E7624  7C 08 02 A6 */	mflr r0
/* 804E7628  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E762C  39 61 00 20 */	addi r11, r1, 0x20
/* 804E7630  4B E7 AB AD */	bl _savegpr_29
/* 804E7634  7C 7E 1B 78 */	mr r30, r3
/* 804E7638  3C 80 80 4F */	lis r4, lit_3789@ha /* 0x804EE8AC@ha */
/* 804E763C  3B E4 E8 AC */	addi r31, r4, lit_3789@l /* 0x804EE8AC@l */
/* 804E7640  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E7644  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E7648  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 804E764C  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 804E7650  2C 00 00 01 */	cmpwi r0, 1
/* 804E7654  41 82 00 7C */	beq lbl_804E76D0
/* 804E7658  40 80 01 10 */	bge lbl_804E7768
/* 804E765C  2C 00 00 00 */	cmpwi r0, 0
/* 804E7660  40 80 00 08 */	bge lbl_804E7668
/* 804E7664  48 00 01 04 */	b lbl_804E7768
lbl_804E7668:
/* 804E7668  38 80 00 12 */	li r4, 0x12
/* 804E766C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E7670  38 A0 00 00 */	li r5, 0
/* 804E7674  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E7678  4B FF DC 59 */	bl anm_init__FP10e_dn_classifUcf
/* 804E767C  38 00 00 01 */	li r0, 1
/* 804E7680  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E7684  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 804E7688  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804E768C  38 00 00 0A */	li r0, 0xa
/* 804E7690  B0 1E 06 E8 */	sth r0, 0x6e8(r30)
/* 804E7694  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007004A@ha */
/* 804E7698  38 03 00 4A */	addi r0, r3, 0x004A /* 0x0007004A@l */
/* 804E769C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E76A0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E76A4  38 81 00 0C */	addi r4, r1, 0xc
/* 804E76A8  38 A0 FF FF */	li r5, -1
/* 804E76AC  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E76B0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E76B4  7D 89 03 A6 */	mtctr r12
/* 804E76B8  4E 80 04 21 */	bctrl 
/* 804E76BC  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 804E76C0  3C 63 00 01 */	addis r3, r3, 1
/* 804E76C4  38 03 80 00 */	addi r0, r3, -32768
/* 804E76C8  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 804E76CC  48 00 00 9C */	b lbl_804E7768
lbl_804E76D0:
/* 804E76D0  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 804E76D4  60 00 00 80 */	ori r0, r0, 0x80
/* 804E76D8  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 804E76DC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 804E76E0  A8 9E 05 D4 */	lha r4, 0x5d4(r30)
/* 804E76E4  38 A0 00 04 */	li r5, 4
/* 804E76E8  38 C0 04 00 */	li r6, 0x400
/* 804E76EC  4B D8 8F 1D */	bl cLib_addCalcAngleS2__FPssss
/* 804E76F0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804E76F4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E76F8  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 804E76FC  4B D8 83 85 */	bl cLib_addCalc0__FPfff
/* 804E7700  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E7704  38 80 00 01 */	li r4, 1
/* 804E7708  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E770C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E7710  40 82 00 18 */	bne lbl_804E7728
/* 804E7714  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E7718  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E771C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E7720  41 82 00 08 */	beq lbl_804E7728
/* 804E7724  38 80 00 00 */	li r4, 0
lbl_804E7728:
/* 804E7728  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804E772C  41 82 00 3C */	beq lbl_804E7768
/* 804E7730  38 00 00 03 */	li r0, 3
/* 804E7734  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E7738  38 00 00 00 */	li r0, 0
/* 804E773C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E7740  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007004C@ha */
/* 804E7744  38 03 00 4C */	addi r0, r3, 0x004C /* 0x0007004C@l */
/* 804E7748  90 01 00 08 */	stw r0, 8(r1)
/* 804E774C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E7750  38 81 00 08 */	addi r4, r1, 8
/* 804E7754  38 A0 FF FF */	li r5, -1
/* 804E7758  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E775C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E7760  7D 89 03 A6 */	mtctr r12
/* 804E7764  4E 80 04 21 */	bctrl 
lbl_804E7768:
/* 804E7768  7F C3 F3 78 */	mr r3, r30
/* 804E776C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804E7770  38 80 00 01 */	li r4, 1
/* 804E7774  4B FF EB CD */	bl move_gake_check__FP10e_dn_classfSc
/* 804E7778  2C 03 00 00 */	cmpwi r3, 0
/* 804E777C  41 82 00 14 */	beq lbl_804E7790
/* 804E7780  38 00 00 17 */	li r0, 0x17
/* 804E7784  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E7788  38 00 00 00 */	li r0, 0
/* 804E778C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E7790:
/* 804E7790  39 61 00 20 */	addi r11, r1, 0x20
/* 804E7794  4B E7 AA 95 */	bl _restgpr_29
/* 804E7798  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E779C  7C 08 03 A6 */	mtlr r0
/* 804E77A0  38 21 00 20 */	addi r1, r1, 0x20
/* 804E77A4  4E 80 00 20 */	blr 
