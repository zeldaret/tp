lbl_80AAABA0:
/* 80AAABA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AAABA4  7C 08 02 A6 */	mflr r0
/* 80AAABA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AAABAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AAABB0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AAABB4  7C 7E 1B 78 */	mr r30, r3
/* 80AAABB8  8B E3 10 10 */	lbz r31, 0x1010(r3)
/* 80AAABBC  A8 03 0D 1C */	lha r0, 0xd1c(r3)
/* 80AAABC0  2C 00 00 00 */	cmpwi r0, 0
/* 80AAABC4  40 82 00 88 */	bne lbl_80AAAC4C
/* 80AAABC8  38 00 00 00 */	li r0, 0
/* 80AAABCC  98 1E 10 10 */	stb r0, 0x1010(r30)
/* 80AAABD0  4B FF FE E9 */	bl chkPullOutLetter1__12daNpc_Post_cFv
/* 80AAABD4  2C 03 00 00 */	cmpwi r3, 0
/* 80AAABD8  41 82 00 5C */	beq lbl_80AAAC34
/* 80AAABDC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AAABE0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80AAABE4  3C 60 80 AB */	lis r3, lit_5115@ha /* 0x80AAD320@ha */
/* 80AAABE8  C0 03 D3 20 */	lfs f0, lit_5115@l(r3)  /* 0x80AAD320@l */
/* 80AAABEC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80AAABF0  40 80 00 5C */	bge lbl_80AAAC4C
/* 80AAABF4  38 00 00 01 */	li r0, 1
/* 80AAABF8  98 1E 10 10 */	stb r0, 0x1010(r30)
/* 80AAABFC  88 1E 10 10 */	lbz r0, 0x1010(r30)
/* 80AAAC00  7C 1F 00 40 */	cmplw r31, r0
/* 80AAAC04  41 82 00 48 */	beq lbl_80AAAC4C
/* 80AAAC08  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500F6@ha */
/* 80AAAC0C  38 03 00 F6 */	addi r0, r3, 0x00F6 /* 0x000500F6@l */
/* 80AAAC10  90 01 00 08 */	stw r0, 8(r1)
/* 80AAAC14  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AAAC18  38 81 00 08 */	addi r4, r1, 8
/* 80AAAC1C  38 A0 FF FF */	li r5, -1
/* 80AAAC20  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 80AAAC24  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AAAC28  7D 89 03 A6 */	mtctr r12
/* 80AAAC2C  4E 80 04 21 */	bctrl 
/* 80AAAC30  48 00 00 1C */	b lbl_80AAAC4C
lbl_80AAAC34:
/* 80AAAC34  7F C3 F3 78 */	mr r3, r30
/* 80AAAC38  4B FF FE F5 */	bl chkPullOutLetter2__12daNpc_Post_cFv
/* 80AAAC3C  2C 03 00 00 */	cmpwi r3, 0
/* 80AAAC40  41 82 00 0C */	beq lbl_80AAAC4C
/* 80AAAC44  38 00 00 01 */	li r0, 1
/* 80AAAC48  98 1E 10 10 */	stb r0, 0x1010(r30)
lbl_80AAAC4C:
/* 80AAAC4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AAAC50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AAAC54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AAAC58  7C 08 03 A6 */	mtlr r0
/* 80AAAC5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AAAC60  4E 80 00 20 */	blr 
