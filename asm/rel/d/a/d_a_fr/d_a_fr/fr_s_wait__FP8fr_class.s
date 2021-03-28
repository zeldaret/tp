lbl_8051A558:
/* 8051A558  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051A55C  7C 08 02 A6 */	mflr r0
/* 8051A560  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051A564  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8051A568  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8051A56C  7C 7E 1B 78 */	mr r30, r3
/* 8051A570  3C 80 80 52 */	lis r4, lit_3649@ha
/* 8051A574  3B E4 B9 C8 */	addi r31, r4, lit_3649@l
/* 8051A578  A8 83 05 D4 */	lha r4, 0x5d4(r3)
/* 8051A57C  2C 04 00 01 */	cmpwi r4, 1
/* 8051A580  41 82 00 50 */	beq lbl_8051A5D0
/* 8051A584  40 80 00 84 */	bge lbl_8051A608
/* 8051A588  2C 04 00 00 */	cmpwi r4, 0
/* 8051A58C  40 80 00 08 */	bge lbl_8051A594
/* 8051A590  48 00 00 78 */	b lbl_8051A608
lbl_8051A594:
/* 8051A594  38 04 00 01 */	addi r0, r4, 1
/* 8051A598  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 8051A59C  38 80 00 0A */	li r4, 0xa
/* 8051A5A0  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8051A5A4  38 A0 00 02 */	li r5, 2
/* 8051A5A8  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8051A5AC  4B FF F3 A1 */	bl anm_init__FP8fr_classifUcf
/* 8051A5B0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8051A5B4  4B D4 D3 A0 */	b cM_rndF__Ff
/* 8051A5B8  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8051A5BC  EC 00 08 2A */	fadds f0, f0, f1
/* 8051A5C0  FC 00 00 1E */	fctiwz f0, f0
/* 8051A5C4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051A5C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8051A5CC  B0 1E 05 DC */	sth r0, 0x5dc(r30)
lbl_8051A5D0:
/* 8051A5D0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8051A5D4  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8051A5D8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8051A5DC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8051A5E0  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8051A5E4  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 8051A5E8  4B D5 54 98 */	b cLib_addCalc0__FPfff
/* 8051A5EC  A8 1E 05 DC */	lha r0, 0x5dc(r30)
/* 8051A5F0  2C 00 00 00 */	cmpwi r0, 0
/* 8051A5F4  40 82 00 14 */	bne lbl_8051A608
/* 8051A5F8  38 00 00 14 */	li r0, 0x14
/* 8051A5FC  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
/* 8051A600  38 00 00 00 */	li r0, 0
/* 8051A604  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
lbl_8051A608:
/* 8051A608  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8051A60C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8051A610  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051A614  7C 08 03 A6 */	mtlr r0
/* 8051A618  38 21 00 20 */	addi r1, r1, 0x20
/* 8051A61C  4E 80 00 20 */	blr 
