lbl_801F4510:
/* 801F4510  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F4514  7C 08 02 A6 */	mflr r0
/* 801F4518  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F451C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F4520  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F4524  7C 7E 1B 78 */	mr r30, r3
/* 801F4528  7C 9F 23 78 */	mr r31, r4
/* 801F452C  88 83 01 B7 */	lbz r4, 0x1b7(r3)
/* 801F4530  28 04 00 FF */	cmplwi r4, 0xff
/* 801F4534  41 82 00 C4 */	beq lbl_801F45F8
/* 801F4538  38 A0 00 FF */	li r5, 0xff
/* 801F453C  38 C0 00 00 */	li r6, 0
/* 801F4540  3C E0 80 43 */	lis r7, g_msHIO@ha
/* 801F4544  38 E7 E8 4C */	addi r7, r7, g_msHIO@l
/* 801F4548  88 E7 00 0A */	lbz r7, 0xa(r7)
/* 801F454C  48 00 20 BD */	bl yesnoWakuAlpahAnmInit__12dMenu_save_cFUcUcUcUc
/* 801F4550  88 1E 01 B7 */	lbz r0, 0x1b7(r30)
/* 801F4554  54 00 10 3A */	slwi r0, r0, 2
/* 801F4558  7C 7E 02 14 */	add r3, r30, r0
/* 801F455C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801F4560  80 63 00 04 */	lwz r3, 4(r3)
/* 801F4564  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 801F4568  81 83 00 00 */	lwz r12, 0(r3)
/* 801F456C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F4570  7D 89 03 A6 */	mtctr r12
/* 801F4574  4E 80 04 21 */	bctrl 
/* 801F4578  88 BE 01 B7 */	lbz r5, 0x1b7(r30)
/* 801F457C  54 A4 18 38 */	slwi r4, r5, 3
/* 801F4580  3C 60 80 3C */	lis r3, YnSelEndFrameTbl@ha
/* 801F4584  38 03 DF C4 */	addi r0, r3, YnSelEndFrameTbl@l
/* 801F4588  7C 60 22 14 */	add r3, r0, r4
/* 801F458C  57 E0 15 BA */	rlwinm r0, r31, 2, 0x16, 0x1d
/* 801F4590  7C 83 00 2E */	lwzx r4, r3, r0
/* 801F4594  54 A0 10 3A */	slwi r0, r5, 2
/* 801F4598  7C 7E 02 14 */	add r3, r30, r0
/* 801F459C  90 83 00 8C */	stw r4, 0x8c(r3)
/* 801F45A0  88 1E 01 B7 */	lbz r0, 0x1b7(r30)
/* 801F45A4  54 00 10 3A */	slwi r0, r0, 2
/* 801F45A8  7C 7E 02 14 */	add r3, r30, r0
/* 801F45AC  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 801F45B0  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F45B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F45B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F45BC  3C 00 43 30 */	lis r0, 0x4330
/* 801F45C0  90 01 00 08 */	stw r0, 8(r1)
/* 801F45C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F45C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F45CC  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 801F45D0  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F45D4  88 1E 01 B7 */	lbz r0, 0x1b7(r30)
/* 801F45D8  54 00 10 3A */	slwi r0, r0, 2
/* 801F45DC  7C 7E 02 14 */	add r3, r30, r0
/* 801F45E0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801F45E4  80 63 00 04 */	lwz r3, 4(r3)
/* 801F45E8  48 10 39 E5 */	bl animationTransform__7J2DPaneFv
/* 801F45EC  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 801F45F0  C0 22 AA 48 */	lfs f1, lit_4175(r2)
/* 801F45F4  4B FA 0C AD */	bl setAlphaRate__16dSelect_cursor_cFf
lbl_801F45F8:
/* 801F45F8  88 1E 01 B6 */	lbz r0, 0x1b6(r30)
/* 801F45FC  28 00 00 FF */	cmplwi r0, 0xff
/* 801F4600  41 82 00 9C */	beq lbl_801F469C
/* 801F4604  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801F4608  7C 7E 02 14 */	add r3, r30, r0
/* 801F460C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801F4610  80 63 00 04 */	lwz r3, 4(r3)
/* 801F4614  80 9E 00 44 */	lwz r4, 0x44(r30)
/* 801F4618  81 83 00 00 */	lwz r12, 0(r3)
/* 801F461C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F4620  7D 89 03 A6 */	mtctr r12
/* 801F4624  4E 80 04 21 */	bctrl 
/* 801F4628  88 BE 01 B6 */	lbz r5, 0x1b6(r30)
/* 801F462C  54 A4 18 38 */	slwi r4, r5, 3
/* 801F4630  3C 60 80 3C */	lis r3, YnSelStartFrameTbl@ha
/* 801F4634  38 03 DF B4 */	addi r0, r3, YnSelStartFrameTbl@l
/* 801F4638  7C 60 22 14 */	add r3, r0, r4
/* 801F463C  57 E0 15 BA */	rlwinm r0, r31, 2, 0x16, 0x1d
/* 801F4640  7C 83 00 2E */	lwzx r4, r3, r0
/* 801F4644  54 A0 10 3A */	slwi r0, r5, 2
/* 801F4648  7C 7E 02 14 */	add r3, r30, r0
/* 801F464C  90 83 00 8C */	stw r4, 0x8c(r3)
/* 801F4650  88 1E 01 B6 */	lbz r0, 0x1b6(r30)
/* 801F4654  54 00 10 3A */	slwi r0, r0, 2
/* 801F4658  7C 7E 02 14 */	add r3, r30, r0
/* 801F465C  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 801F4660  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F4664  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F4668  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F466C  3C 00 43 30 */	lis r0, 0x4330
/* 801F4670  90 01 00 08 */	stw r0, 8(r1)
/* 801F4674  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F4678  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F467C  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 801F4680  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F4684  88 1E 01 B6 */	lbz r0, 0x1b6(r30)
/* 801F4688  54 00 10 3A */	slwi r0, r0, 2
/* 801F468C  7C 7E 02 14 */	add r3, r30, r0
/* 801F4690  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801F4694  80 63 00 04 */	lwz r3, 4(r3)
/* 801F4698  48 10 39 35 */	bl animationTransform__7J2DPaneFv
lbl_801F469C:
/* 801F469C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F46A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F46A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F46A8  7C 08 03 A6 */	mtlr r0
/* 801F46AC  38 21 00 20 */	addi r1, r1, 0x20
/* 801F46B0  4E 80 00 20 */	blr 
