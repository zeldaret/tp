lbl_809D5600:
/* 809D5600  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D5604  7C 08 02 A6 */	mflr r0
/* 809D5608  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D560C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809D5610  7C 7F 1B 78 */	mr r31, r3
/* 809D5614  88 03 10 DD */	lbz r0, 0x10dd(r3)
/* 809D5618  28 00 00 00 */	cmplwi r0, 0
/* 809D561C  41 82 00 30 */	beq lbl_809D564C
/* 809D5620  4B 7C 33 31 */	bl itemRotate__13dShopSystem_cFv
/* 809D5624  3C 60 80 9D */	lis r3, lit_4009@ha /* 0x809D6E18@ha */
/* 809D5628  C0 03 6E 18 */	lfs f0, lit_4009@l(r3)  /* 0x809D6E18@l */
/* 809D562C  D0 01 00 08 */	stfs f0, 8(r1)
/* 809D5630  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809D5634  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809D5638  7F E3 FB 78 */	mr r3, r31
/* 809D563C  38 81 00 08 */	addi r4, r1, 8
/* 809D5640  4B 7C 33 ED */	bl itemZoom__13dShopSystem_cFP4cXyz
/* 809D5644  7F E3 FB 78 */	mr r3, r31
/* 809D5648  4B 7C 32 31 */	bl drawCursor__13dShopSystem_cFv
lbl_809D564C:
/* 809D564C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809D5650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D5654  7C 08 03 A6 */	mtlr r0
/* 809D5658  38 21 00 20 */	addi r1, r1, 0x20
/* 809D565C  4E 80 00 20 */	blr 
