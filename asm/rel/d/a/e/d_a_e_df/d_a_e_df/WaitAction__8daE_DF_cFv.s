lbl_806A91B4:
/* 806A91B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806A91B8  7C 08 02 A6 */	mflr r0
/* 806A91BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A91C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806A91C4  7C 7F 1B 78 */	mr r31, r3
/* 806A91C8  88 03 05 AD */	lbz r0, 0x5ad(r3)
/* 806A91CC  2C 00 00 01 */	cmpwi r0, 1
/* 806A91D0  41 82 00 6C */	beq lbl_806A923C
/* 806A91D4  40 80 00 6C */	bge lbl_806A9240
/* 806A91D8  2C 00 00 00 */	cmpwi r0, 0
/* 806A91DC  40 80 00 08 */	bge lbl_806A91E4
/* 806A91E0  48 00 00 60 */	b lbl_806A9240
lbl_806A91E4:
/* 806A91E4  38 80 00 0A */	li r4, 0xa
/* 806A91E8  38 A0 00 02 */	li r5, 2
/* 806A91EC  3C C0 80 6B */	lis r6, lit_4238@ha /* 0x806A9FC8@ha */
/* 806A91F0  C0 26 9F C8 */	lfs f1, lit_4238@l(r6)  /* 0x806A9FC8@l */
/* 806A91F4  3C C0 80 6B */	lis r6, lit_3918@ha /* 0x806A9F38@ha */
/* 806A91F8  C0 46 9F 38 */	lfs f2, lit_3918@l(r6)  /* 0x806A9F38@l */
/* 806A91FC  4B FF E6 D9 */	bl SetAnm__8daE_DF_cFiiff
/* 806A9200  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701A1@ha */
/* 806A9204  38 03 01 A1 */	addi r0, r3, 0x01A1 /* 0x000701A1@l */
/* 806A9208  90 01 00 08 */	stw r0, 8(r1)
/* 806A920C  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806A9210  38 81 00 08 */	addi r4, r1, 8
/* 806A9214  38 A0 00 00 */	li r5, 0
/* 806A9218  38 C0 FF FF */	li r6, -1
/* 806A921C  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806A9220  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A9224  7D 89 03 A6 */	mtctr r12
/* 806A9228  4E 80 04 21 */	bctrl 
/* 806A922C  88 7F 05 AD */	lbz r3, 0x5ad(r31)
/* 806A9230  38 03 00 01 */	addi r0, r3, 1
/* 806A9234  98 1F 05 AD */	stb r0, 0x5ad(r31)
/* 806A9238  48 00 00 08 */	b lbl_806A9240
lbl_806A923C:
/* 806A923C  4B FF FC F1 */	bl SearchAction__8daE_DF_cFv
lbl_806A9240:
/* 806A9240  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806A9244  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806A9248  7C 08 03 A6 */	mtlr r0
/* 806A924C  38 21 00 20 */	addi r1, r1, 0x20
/* 806A9250  4E 80 00 20 */	blr 
