lbl_80B0A568:
/* 80B0A568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B0A56C  7C 08 02 A6 */	mflr r0
/* 80B0A570  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B0A574  7C 66 1B 78 */	mr r6, r3
/* 80B0A578  3C 60 80 B1 */	lis r3, lit_3999@ha
/* 80B0A57C  38 83 C1 C4 */	addi r4, r3, lit_3999@l
/* 80B0A580  A8 06 07 10 */	lha r0, 0x710(r6)
/* 80B0A584  2C 00 00 02 */	cmpwi r0, 2
/* 80B0A588  41 82 00 0C */	beq lbl_80B0A594
/* 80B0A58C  2C 00 00 03 */	cmpwi r0, 3
/* 80B0A590  40 82 00 74 */	bne lbl_80B0A604
lbl_80B0A594:
/* 80B0A594  38 00 00 05 */	li r0, 5
/* 80B0A598  B0 06 07 10 */	sth r0, 0x710(r6)
/* 80B0A59C  38 00 00 00 */	li r0, 0
/* 80B0A5A0  90 06 06 EC */	stw r0, 0x6ec(r6)
/* 80B0A5A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B0A5A8  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 80B0A5AC  80 65 5D AC */	lwz r3, 0x5dac(r5)
/* 80B0A5B0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B0A5B4  D0 06 06 FC */	stfs f0, 0x6fc(r6)
/* 80B0A5B8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B0A5BC  D0 06 07 00 */	stfs f0, 0x700(r6)
/* 80B0A5C0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B0A5C4  D0 06 07 04 */	stfs f0, 0x704(r6)
/* 80B0A5C8  C0 06 07 00 */	lfs f0, 0x700(r6)
/* 80B0A5CC  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 80B0A5D0  EC 00 08 2A */	fadds f0, f0, f1
/* 80B0A5D4  D0 06 07 00 */	stfs f0, 0x700(r6)
/* 80B0A5D8  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 80B0A5DC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B0A5E0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B0A5E4  C0 04 01 C8 */	lfs f0, 0x1c8(r4)
/* 80B0A5E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B0A5EC  38 66 06 F0 */	addi r3, r6, 0x6f0
/* 80B0A5F0  38 86 06 FC */	addi r4, r6, 0x6fc
/* 80B0A5F4  80 A5 5D AC */	lwz r5, 0x5dac(r5)
/* 80B0A5F8  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 80B0A5FC  38 C1 00 08 */	addi r6, r1, 8
/* 80B0A600  4B 76 67 C0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
lbl_80B0A604:
/* 80B0A604  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B0A608  7C 08 03 A6 */	mtlr r0
/* 80B0A60C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B0A610  4E 80 00 20 */	blr 
