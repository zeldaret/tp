lbl_801DB514:
/* 801DB514  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DB518  7C 08 02 A6 */	mflr r0
/* 801DB51C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DB520  39 61 00 20 */	addi r11, r1, 0x20
/* 801DB524  48 18 6C AD */	bl _savegpr_26
/* 801DB528  7C 7E 1B 78 */	mr r30, r3
/* 801DB52C  7C 9F 23 78 */	mr r31, r4
/* 801DB530  88 03 00 E0 */	lbz r0, 0xe0(r3)
/* 801DB534  28 00 00 00 */	cmplwi r0, 0
/* 801DB538  41 82 01 F4 */	beq lbl_801DB72C
/* 801DB53C  3B 40 00 00 */	li r26, 0
/* 801DB540  3B A0 00 00 */	li r29, 0
/* 801DB544  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801DB548  3B 83 FA FC */	addi r28, r3, g_ringHIO@l
lbl_801DB54C:
/* 801DB54C  3B 7D 00 3C */	addi r27, r29, 0x3c
/* 801DB550  7C 7E D8 2E */	lwzx r3, r30, r27
/* 801DB554  28 03 00 00 */	cmplwi r3, 0
/* 801DB558  41 82 00 44 */	beq lbl_801DB59C
/* 801DB55C  C0 1C 00 FC */	lfs f0, 0xfc(r28)
/* 801DB560  80 63 00 04 */	lwz r3, 4(r3)
/* 801DB564  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DB568  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DB56C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB570  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DB574  7D 89 03 A6 */	mtctr r12
/* 801DB578  4E 80 04 21 */	bctrl 
/* 801DB57C  7C 7E D8 2E */	lwzx r3, r30, r27
/* 801DB580  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 801DB584  C0 1C 00 F4 */	lfs f0, 0xf4(r28)
/* 801DB588  EC 21 00 2A */	fadds f1, f1, f0
/* 801DB58C  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 801DB590  C0 1C 00 F8 */	lfs f0, 0xf8(r28)
/* 801DB594  EC 42 00 2A */	fadds f2, f2, f0
/* 801DB598  48 07 90 19 */	bl paneTrans__8CPaneMgrFff
lbl_801DB59C:
/* 801DB59C  3B 5A 00 01 */	addi r26, r26, 1
/* 801DB5A0  2C 1A 00 02 */	cmpwi r26, 2
/* 801DB5A4  3B BD 00 04 */	addi r29, r29, 4
/* 801DB5A8  41 80 FF A4 */	blt lbl_801DB54C
/* 801DB5AC  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801DB5B0  38 63 FA FC */	addi r3, r3, g_ringHIO@l
/* 801DB5B4  C0 03 01 0C */	lfs f0, 0x10c(r3)
/* 801DB5B8  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 801DB5BC  80 63 00 04 */	lwz r3, 4(r3)
/* 801DB5C0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DB5C4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DB5C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB5CC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DB5D0  7D 89 03 A6 */	mtctr r12
/* 801DB5D4  4E 80 04 21 */	bctrl 
/* 801DB5D8  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 801DB5DC  3C 80 80 43 */	lis r4, g_ringHIO@ha
/* 801DB5E0  38 84 FA FC */	addi r4, r4, g_ringHIO@l
/* 801DB5E4  C0 24 01 04 */	lfs f1, 0x104(r4)
/* 801DB5E8  C0 44 01 08 */	lfs f2, 0x108(r4)
/* 801DB5EC  48 07 8F C5 */	bl paneTrans__8CPaneMgrFff
/* 801DB5F0  80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 801DB5F4  28 03 00 00 */	cmplwi r3, 0
/* 801DB5F8  41 82 00 30 */	beq lbl_801DB628
/* 801DB5FC  C0 22 A8 88 */	lfs f1, lit_4062(r2)
/* 801DB600  FC 40 08 90 */	fmr f2, f1
/* 801DB604  C0 62 A8 A8 */	lfs f3, lit_4302(r2)
/* 801DB608  C0 82 A8 AC */	lfs f4, lit_4303(r2)
/* 801DB60C  38 80 00 00 */	li r4, 0
/* 801DB610  38 A0 00 00 */	li r5, 0
/* 801DB614  38 C0 00 00 */	li r6, 0
/* 801DB618  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB61C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801DB620  7D 89 03 A6 */	mtctr r12
/* 801DB624  4E 80 04 21 */	bctrl 
lbl_801DB628:
/* 801DB628  80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 801DB62C  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 801DB630  7C 03 00 40 */	cmplw r3, r0
/* 801DB634  41 82 00 84 */	beq lbl_801DB6B8
/* 801DB638  90 7E 00 D0 */	stw r3, 0xd0(r30)
/* 801DB63C  3B 40 00 00 */	li r26, 0
/* 801DB640  3B A0 00 00 */	li r29, 0
lbl_801DB644:
/* 801DB644  38 1D 00 18 */	addi r0, r29, 0x18
/* 801DB648  7C 7E 00 2E */	lwzx r3, r30, r0
/* 801DB64C  80 A3 00 04 */	lwz r5, 4(r3)
/* 801DB650  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801DB654  80 9E 00 CC */	lwz r4, 0xcc(r30)
/* 801DB658  38 C0 00 00 */	li r6, 0
/* 801DB65C  38 E0 00 00 */	li r7, 0
/* 801DB660  39 00 00 00 */	li r8, 0
/* 801DB664  39 20 00 00 */	li r9, 0
/* 801DB668  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB66C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB670  7D 89 03 A6 */	mtctr r12
/* 801DB674  4E 80 04 21 */	bctrl 
/* 801DB678  3B 5A 00 01 */	addi r26, r26, 1
/* 801DB67C  2C 1A 00 04 */	cmpwi r26, 4
/* 801DB680  3B BD 00 04 */	addi r29, r29, 4
/* 801DB684  41 80 FF C0 */	blt lbl_801DB644
/* 801DB688  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801DB68C  80 A3 00 04 */	lwz r5, 4(r3)
/* 801DB690  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801DB694  80 9E 00 C8 */	lwz r4, 0xc8(r30)
/* 801DB698  38 C0 00 00 */	li r6, 0
/* 801DB69C  38 E0 00 00 */	li r7, 0
/* 801DB6A0  39 00 00 00 */	li r8, 0
/* 801DB6A4  39 20 00 00 */	li r9, 0
/* 801DB6A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB6AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB6B0  7D 89 03 A6 */	mtctr r12
/* 801DB6B4  4E 80 04 21 */	bctrl 
lbl_801DB6B8:
/* 801DB6B8  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 801DB6BC  C0 22 A8 88 */	lfs f1, lit_4062(r2)
/* 801DB6C0  FC 40 08 90 */	fmr f2, f1
/* 801DB6C4  7F E4 FB 78 */	mr r4, r31
/* 801DB6C8  48 11 D8 0D */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801DB6CC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801DB6D0  80 83 00 04 */	lwz r4, 4(r3)
/* 801DB6D4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801DB6D8  C0 22 A8 B0 */	lfs f1, lit_4304(r2)
/* 801DB6DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB6E0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DB6E4  7D 89 03 A6 */	mtctr r12
/* 801DB6E8  4E 80 04 21 */	bctrl 
/* 801DB6EC  7F C3 F3 78 */	mr r3, r30
/* 801DB6F0  48 00 00 55 */	bl drawKantera__19dMenu_ItemExplain_cFv
/* 801DB6F4  80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 801DB6F8  28 03 00 00 */	cmplwi r3, 0
/* 801DB6FC  41 82 00 20 */	beq lbl_801DB71C
/* 801DB700  C0 22 A8 B4 */	lfs f1, lit_4305(r2)
/* 801DB704  C0 42 A8 B8 */	lfs f2, lit_4306(r2)
/* 801DB708  48 05 E6 91 */	bl translate__17dMsgScrn3Select_cFff
/* 801DB70C  80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 801DB710  C0 22 A8 88 */	lfs f1, lit_4062(r2)
/* 801DB714  FC 40 08 90 */	fmr f2, f1
/* 801DB718  48 05 E6 BD */	bl draw__17dMsgScrn3Select_cFff
lbl_801DB71C:
/* 801DB71C  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 801DB720  28 03 00 00 */	cmplwi r3, 0
/* 801DB724  41 82 00 08 */	beq lbl_801DB72C
/* 801DB728  48 06 06 99 */	bl draw__15dMsgScrnArrow_cFv
lbl_801DB72C:
/* 801DB72C  39 61 00 20 */	addi r11, r1, 0x20
/* 801DB730  48 18 6A ED */	bl _restgpr_26
/* 801DB734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DB738  7C 08 03 A6 */	mtlr r0
/* 801DB73C  38 21 00 20 */	addi r1, r1, 0x20
/* 801DB740  4E 80 00 20 */	blr 
