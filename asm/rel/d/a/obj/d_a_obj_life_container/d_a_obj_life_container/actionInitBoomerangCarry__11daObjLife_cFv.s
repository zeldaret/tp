lbl_804CDC2C:
/* 804CDC2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CDC30  7C 08 02 A6 */	mflr r0
/* 804CDC34  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CDC38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804CDC3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804CDC40  7C 7F 1B 78 */	mr r31, r3
/* 804CDC44  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 804CDC48  60 00 00 01 */	ori r0, r0, 1
/* 804CDC4C  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 804CDC50  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 804CDC54  60 00 00 01 */	ori r0, r0, 1
/* 804CDC58  90 03 08 0C */	stw r0, 0x80c(r3)
/* 804CDC5C  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha /* 0x803AED78@ha */
/* 804CDC60  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l /* 0x803AED78@l */
/* 804CDC64  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 804CDC68  54 00 10 3A */	slwi r0, r0, 2
/* 804CDC6C  7C 63 02 14 */	add r3, r3, r0
/* 804CDC70  8B C3 00 01 */	lbz r30, 1(r3)
/* 804CDC74  88 03 00 02 */	lbz r0, 2(r3)
/* 804CDC78  38 7F 09 04 */	addi r3, r31, 0x904
/* 804CDC7C  3C 80 80 4D */	lis r4, lit_4206@ha /* 0x804CE484@ha */
/* 804CDC80  C0 44 E4 84 */	lfs f2, lit_4206@l(r4)  /* 0x804CE484@l */
/* 804CDC84  3C 80 80 4D */	lis r4, lit_3939@ha /* 0x804CE464@ha */
/* 804CDC88  C8 24 E4 64 */	lfd f1, lit_3939@l(r4)  /* 0x804CE464@l */
/* 804CDC8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CDC90  3C 00 43 30 */	lis r0, 0x4330
/* 804CDC94  90 01 00 08 */	stw r0, 8(r1)
/* 804CDC98  C8 01 00 08 */	lfd f0, 8(r1)
/* 804CDC9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804CDCA0  EC 22 00 32 */	fmuls f1, f2, f0
/* 804CDCA4  4B DA 15 5D */	bl SetR__8cM3dGCylFf
/* 804CDCA8  38 7F 09 04 */	addi r3, r31, 0x904
/* 804CDCAC  3C 80 80 4D */	lis r4, lit_4206@ha /* 0x804CE484@ha */
/* 804CDCB0  C0 44 E4 84 */	lfs f2, lit_4206@l(r4)  /* 0x804CE484@l */
/* 804CDCB4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 804CDCB8  3C 80 80 4D */	lis r4, lit_3939@ha /* 0x804CE464@ha */
/* 804CDCBC  C8 24 E4 64 */	lfd f1, lit_3939@l(r4)  /* 0x804CE464@l */
/* 804CDCC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CDCC4  3C 00 43 30 */	lis r0, 0x4330
/* 804CDCC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CDCCC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804CDCD0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804CDCD4  EC 22 00 32 */	fmuls f1, f2, f0
/* 804CDCD8  4B DA 15 21 */	bl SetH__8cM3dGCylFf
/* 804CDCDC  80 1F 08 0C */	lwz r0, 0x80c(r31)
/* 804CDCE0  60 00 00 01 */	ori r0, r0, 1
/* 804CDCE4  90 1F 08 0C */	stw r0, 0x80c(r31)
/* 804CDCE8  38 00 00 04 */	li r0, 4
/* 804CDCEC  98 1F 09 34 */	stb r0, 0x934(r31)
/* 804CDCF0  38 60 00 01 */	li r3, 1
/* 804CDCF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804CDCF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804CDCFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CDD00  7C 08 03 A6 */	mtlr r0
/* 804CDD04  38 21 00 20 */	addi r1, r1, 0x20
/* 804CDD08  4E 80 00 20 */	blr 
