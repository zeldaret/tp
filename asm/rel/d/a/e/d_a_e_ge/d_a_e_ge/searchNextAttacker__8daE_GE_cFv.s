lbl_806C83F8:
/* 806C83F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806C83FC  7C 08 02 A6 */	mflr r0
/* 806C8400  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C8404  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806C8408  7C 7F 1B 78 */	mr r31, r3
/* 806C840C  88 03 0B 9A */	lbz r0, 0xb9a(r3)
/* 806C8410  28 00 00 02 */	cmplwi r0, 2
/* 806C8414  40 82 00 0C */	bne lbl_806C8420
/* 806C8418  38 60 00 00 */	li r3, 0
/* 806C841C  48 00 00 70 */	b lbl_806C848C
lbl_806C8420:
/* 806C8420  38 00 00 00 */	li r0, 0
/* 806C8424  3C 60 80 6D */	lis r3, target_count@ha /* 0x806CD39C@ha */
/* 806C8428  90 03 D3 9C */	stw r0, target_count@l(r3)  /* 0x806CD39C@l */
/* 806C842C  3C 60 80 6C */	lis r3, s_ge_attack__FPvPv@ha /* 0x806C7FE4@ha */
/* 806C8430  38 63 7F E4 */	addi r3, r3, s_ge_attack__FPvPv@l /* 0x806C7FE4@l */
/* 806C8434  7F E4 FB 78 */	mr r4, r31
/* 806C8438  4B 95 8F 01 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806C843C  3C 60 80 6D */	lis r3, target_count@ha /* 0x806CD39C@ha */
/* 806C8440  80 03 D3 9C */	lwz r0, target_count@l(r3)  /* 0x806CD39C@l */
/* 806C8444  2C 00 00 02 */	cmpwi r0, 2
/* 806C8448  41 80 00 0C */	blt lbl_806C8454
/* 806C844C  38 60 00 00 */	li r3, 0
/* 806C8450  48 00 00 3C */	b lbl_806C848C
lbl_806C8454:
/* 806C8454  7F E3 FB 78 */	mr r3, r31
/* 806C8458  38 80 00 02 */	li r4, 2
/* 806C845C  4B FF FC 9D */	bl setActionMode__8daE_GE_cFi
/* 806C8460  3C 60 80 6D */	lis r3, lit_3926@ha /* 0x806CD030@ha */
/* 806C8464  C0 23 D0 30 */	lfs f1, lit_3926@l(r3)  /* 0x806CD030@l */
/* 806C8468  4B B9 F4 ED */	bl cM_rndF__Ff
/* 806C846C  3C 60 80 6D */	lis r3, lit_4178@ha /* 0x806CD078@ha */
/* 806C8470  C0 03 D0 78 */	lfs f0, lit_4178@l(r3)  /* 0x806CD078@l */
/* 806C8474  EC 00 08 2A */	fadds f0, f0, f1
/* 806C8478  FC 00 00 1E */	fctiwz f0, f0
/* 806C847C  D8 01 00 08 */	stfd f0, 8(r1)
/* 806C8480  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806C8484  B0 1F 0B 90 */	sth r0, 0xb90(r31)
/* 806C8488  38 60 00 01 */	li r3, 1
lbl_806C848C:
/* 806C848C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806C8490  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806C8494  7C 08 03 A6 */	mtlr r0
/* 806C8498  38 21 00 20 */	addi r1, r1, 0x20
/* 806C849C  4E 80 00 20 */	blr 
