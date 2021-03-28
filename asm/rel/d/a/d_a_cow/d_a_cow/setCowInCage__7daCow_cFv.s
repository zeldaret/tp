lbl_8065C508:
/* 8065C508  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8065C50C  7C 08 02 A6 */	mflr r0
/* 8065C510  90 01 00 24 */	stw r0, 0x24(r1)
/* 8065C514  39 61 00 20 */	addi r11, r1, 0x20
/* 8065C518  4B D0 5C C4 */	b _savegpr_29
/* 8065C51C  7C 7F 1B 78 */	mr r31, r3
/* 8065C520  3B A0 00 00 */	li r29, 0
/* 8065C524  3B C0 00 00 */	li r30, 0
lbl_8065C528:
/* 8065C528  38 7E 08 8C */	addi r3, r30, 0x88c
/* 8065C52C  7C 1F 18 2E */	lwzx r0, r31, r3
/* 8065C530  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8065C534  7C 1F 19 2E */	stwx r0, r31, r3
/* 8065C538  7C 1F 18 2E */	lwzx r0, r31, r3
/* 8065C53C  60 00 01 00 */	ori r0, r0, 0x100
/* 8065C540  7C 1F 19 2E */	stwx r0, r31, r3
/* 8065C544  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 8065C548  4B C0 74 14 */	b ClrCcMove__9cCcD_SttsFv
/* 8065C54C  3B BD 00 01 */	addi r29, r29, 1
/* 8065C550  2C 1D 00 03 */	cmpwi r29, 3
/* 8065C554  3B DE 01 38 */	addi r30, r30, 0x138
/* 8065C558  41 80 FF D0 */	blt lbl_8065C528
/* 8065C55C  38 7F 08 20 */	addi r3, r31, 0x820
/* 8065C560  3C 80 80 66 */	lis r4, lit_3998@ha
/* 8065C564  C0 24 2D C8 */	lfs f1, lit_3998@l(r4)
/* 8065C568  FC 40 08 90 */	fmr f2, f1
/* 8065C56C  4B A1 99 EC */	b SetWall__12dBgS_AcchCirFff
/* 8065C570  3C 60 80 66 */	lis r3, lit_5651@ha
/* 8065C574  C0 23 2E 74 */	lfs f1, lit_5651@l(r3)
/* 8065C578  4B C0 B3 DC */	b cM_rndF__Ff
/* 8065C57C  FC 00 08 1E */	fctiwz f0, f1
/* 8065C580  D8 01 00 08 */	stfd f0, 8(r1)
/* 8065C584  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 8065C588  3C 60 80 66 */	lis r3, data_806634D0@ha
/* 8065C58C  80 83 34 D0 */	lwz r4, data_806634D0@l(r3)
/* 8065C590  38 60 00 01 */	li r3, 1
/* 8065C594  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 8065C598  7C 60 00 30 */	slw r0, r3, r0
/* 8065C59C  7C 80 00 39 */	and. r0, r4, r0
/* 8065C5A0  41 82 00 2C */	beq lbl_8065C5CC
/* 8065C5A4  38 A0 00 00 */	li r5, 0
/* 8065C5A8  38 00 00 14 */	li r0, 0x14
/* 8065C5AC  7C 09 03 A6 */	mtctr r0
lbl_8065C5B0:
/* 8065C5B0  7C 60 28 30 */	slw r0, r3, r5
/* 8065C5B4  7C 80 00 39 */	and. r0, r4, r0
/* 8065C5B8  40 82 00 0C */	bne lbl_8065C5C4
/* 8065C5BC  54 A7 06 3E */	clrlwi r7, r5, 0x18
/* 8065C5C0  48 00 00 0C */	b lbl_8065C5CC
lbl_8065C5C4:
/* 8065C5C4  38 A5 00 01 */	addi r5, r5, 1
/* 8065C5C8  42 00 FF E8 */	bdnz lbl_8065C5B0
lbl_8065C5CC:
/* 8065C5CC  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 8065C5D0  28 00 00 14 */	cmplwi r0, 0x14
/* 8065C5D4  41 80 00 08 */	blt lbl_8065C5DC
/* 8065C5D8  38 E0 00 13 */	li r7, 0x13
lbl_8065C5DC:
/* 8065C5DC  54 E5 06 3E */	clrlwi r5, r7, 0x18
/* 8065C5E0  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 8065C5E4  3C 60 80 66 */	lis r3, data_80662FC0@ha
/* 8065C5E8  38 63 2F C0 */	addi r3, r3, data_80662FC0@l
/* 8065C5EC  7C 03 04 2E */	lfsx f0, r3, r0
/* 8065C5F0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8065C5F4  54 E6 07 FF */	clrlwi. r6, r7, 0x1f
/* 8065C5F8  54 E0 17 7A */	rlwinm r0, r7, 2, 0x1d, 0x1d
/* 8065C5FC  3C 60 80 66 */	lis r3, data_80663010@ha
/* 8065C600  38 63 30 10 */	addi r3, r3, data_80663010@l
/* 8065C604  7C 03 04 2E */	lfsx f0, r3, r0
/* 8065C608  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8065C60C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8065C610  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 8065C614  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8065C618  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 8065C61C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8065C620  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 8065C624  3C 60 80 66 */	lis r3, data_806634D0@ha
/* 8065C628  38 83 34 D0 */	addi r4, r3, data_806634D0@l
/* 8065C62C  80 64 00 00 */	lwz r3, 0(r4)
/* 8065C630  38 00 00 01 */	li r0, 1
/* 8065C634  7C 00 28 30 */	slw r0, r0, r5
/* 8065C638  7C 60 03 78 */	or r0, r3, r0
/* 8065C63C  90 04 00 00 */	stw r0, 0(r4)
/* 8065C640  41 82 00 18 */	beq lbl_8065C658
/* 8065C644  38 00 00 00 */	li r0, 0
/* 8065C648  B0 1F 0C 34 */	sth r0, 0xc34(r31)
/* 8065C64C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8065C650  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8065C654  48 00 00 14 */	b lbl_8065C668
lbl_8065C658:
/* 8065C658  38 00 80 00 */	li r0, -32768
/* 8065C65C  B0 1F 0C 34 */	sth r0, 0xc34(r31)
/* 8065C660  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8065C664  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_8065C668:
/* 8065C668  39 61 00 20 */	addi r11, r1, 0x20
/* 8065C66C  4B D0 5B BC */	b _restgpr_29
/* 8065C670  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8065C674  7C 08 03 A6 */	mtlr r0
/* 8065C678  38 21 00 20 */	addi r1, r1, 0x20
/* 8065C67C  4E 80 00 20 */	blr 
