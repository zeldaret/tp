lbl_806A9384:
/* 806A9384  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806A9388  7C 08 02 A6 */	mflr r0
/* 806A938C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A9390  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806A9394  7C 7F 1B 78 */	mr r31, r3
/* 806A9398  A8 63 05 BE */	lha r3, 0x5be(r3)
/* 806A939C  38 03 FF FF */	addi r0, r3, -1
/* 806A93A0  B0 1F 05 BE */	sth r0, 0x5be(r31)
/* 806A93A4  A8 1F 05 BE */	lha r0, 0x5be(r31)
/* 806A93A8  2C 00 00 00 */	cmpwi r0, 0
/* 806A93AC  41 81 00 0C */	bgt lbl_806A93B8
/* 806A93B0  38 00 00 00 */	li r0, 0
/* 806A93B4  B0 1F 05 BE */	sth r0, 0x5be(r31)
lbl_806A93B8:
/* 806A93B8  7F E3 FB 78 */	mr r3, r31
/* 806A93BC  48 00 00 E1 */	bl Yazirushi__8daE_DF_cFv
/* 806A93C0  7F E3 FB 78 */	mr r3, r31
/* 806A93C4  4B FF FF 41 */	bl Action__8daE_DF_cFv
/* 806A93C8  3C 60 80 6B */	lis r3, lit_4621@ha
/* 806A93CC  C0 03 9F EC */	lfs f0, lit_4621@l(r3)
/* 806A93D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806A93D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806A93D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A93DC  7F E3 FB 78 */	mr r3, r31
/* 806A93E0  38 9F 05 D8 */	addi r4, r31, 0x5d8
/* 806A93E4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806A93E8  38 C1 00 0C */	addi r6, r1, 0xc
/* 806A93EC  48 00 07 1D */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 806A93F0  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 806A93F4  2C 00 00 0A */	cmpwi r0, 0xa
/* 806A93F8  40 82 00 4C */	bne lbl_806A9444
/* 806A93FC  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806A9400  38 63 00 0C */	addi r3, r3, 0xc
/* 806A9404  3C 80 80 6B */	lis r4, lit_4622@ha
/* 806A9408  C0 24 9F F0 */	lfs f1, lit_4622@l(r4)
/* 806A940C  4B C7 F0 20 */	b checkPass__12J3DFrameCtrlFf
/* 806A9410  2C 03 00 00 */	cmpwi r3, 0
/* 806A9414  41 82 00 30 */	beq lbl_806A9444
/* 806A9418  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701A1@ha */
/* 806A941C  38 03 01 A1 */	addi r0, r3, 0x01A1 /* 0x000701A1@l */
/* 806A9420  90 01 00 08 */	stw r0, 8(r1)
/* 806A9424  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806A9428  38 81 00 08 */	addi r4, r1, 8
/* 806A942C  38 A0 00 00 */	li r5, 0
/* 806A9430  38 C0 FF FF */	li r6, -1
/* 806A9434  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806A9438  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A943C  7D 89 03 A6 */	mtctr r12
/* 806A9440  4E 80 04 21 */	bctrl 
lbl_806A9444:
/* 806A9444  A8 7F 05 C6 */	lha r3, 0x5c6(r31)
/* 806A9448  2C 03 00 00 */	cmpwi r3, 0
/* 806A944C  41 82 00 0C */	beq lbl_806A9458
/* 806A9450  38 03 FF FF */	addi r0, r3, -1
/* 806A9454  B0 1F 05 C6 */	sth r0, 0x5c6(r31)
lbl_806A9458:
/* 806A9458  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806A945C  7C 03 07 74 */	extsb r3, r0
/* 806A9460  4B 98 3C 0C */	b dComIfGp_getReverb__Fi
/* 806A9464  7C 65 1B 78 */	mr r5, r3
/* 806A9468  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806A946C  38 80 00 00 */	li r4, 0
/* 806A9470  4B 96 7C 40 */	b play__16mDoExt_McaMorfSOFUlSc
/* 806A9474  7F E3 FB 78 */	mr r3, r31
/* 806A9478  48 00 01 41 */	bl setBaseMtx__8daE_DF_cFv
/* 806A947C  7F E3 FB 78 */	mr r3, r31
/* 806A9480  4B FF E4 21 */	bl setCcCylinder__8daE_DF_cFv
/* 806A9484  38 60 00 01 */	li r3, 1
/* 806A9488  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806A948C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806A9490  7C 08 03 A6 */	mtlr r0
/* 806A9494  38 21 00 20 */	addi r1, r1, 0x20
/* 806A9498  4E 80 00 20 */	blr 
