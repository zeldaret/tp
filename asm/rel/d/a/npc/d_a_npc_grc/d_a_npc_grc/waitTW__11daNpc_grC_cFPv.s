lbl_809CE3A8:
/* 809CE3A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CE3AC  7C 08 02 A6 */	mflr r0
/* 809CE3B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CE3B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CE3B8  7C 7F 1B 78 */	mr r31, r3
/* 809CE3BC  A0 03 0E 46 */	lhz r0, 0xe46(r3)
/* 809CE3C0  2C 00 00 02 */	cmpwi r0, 2
/* 809CE3C4  41 82 00 74 */	beq lbl_809CE438
/* 809CE3C8  40 80 00 B0 */	bge lbl_809CE478
/* 809CE3CC  2C 00 00 00 */	cmpwi r0, 0
/* 809CE3D0  41 82 00 0C */	beq lbl_809CE3DC
/* 809CE3D4  48 00 00 A4 */	b lbl_809CE478
/* 809CE3D8  48 00 00 A0 */	b lbl_809CE478
lbl_809CE3DC:
/* 809CE3DC  38 80 00 0E */	li r4, 0xe
/* 809CE3E0  3C A0 80 9D */	lis r5, lit_5043@ha /* 0x809CF5D4@ha */
/* 809CE3E4  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)  /* 0x809CF5D4@l */
/* 809CE3E8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809CE3EC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CE3F0  7D 89 03 A6 */	mtctr r12
/* 809CE3F4  4E 80 04 21 */	bctrl 
/* 809CE3F8  7F E3 FB 78 */	mr r3, r31
/* 809CE3FC  38 80 00 00 */	li r4, 0
/* 809CE400  3C A0 80 9D */	lis r5, lit_5043@ha /* 0x809CF5D4@ha */
/* 809CE404  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)  /* 0x809CF5D4@l */
/* 809CE408  38 A0 00 00 */	li r5, 0
/* 809CE40C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809CE410  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809CE414  7D 89 03 A6 */	mtctr r12
/* 809CE418  4E 80 04 21 */	bctrl 
/* 809CE41C  7F E3 FB 78 */	mr r3, r31
/* 809CE420  38 80 00 00 */	li r4, 0
/* 809CE424  4B FF F9 2D */	bl setLookMode__11daNpc_grC_cFi
/* 809CE428  38 00 00 00 */	li r0, 0
/* 809CE42C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809CE430  38 00 00 02 */	li r0, 2
/* 809CE434  B0 1F 0E 46 */	sth r0, 0xe46(r31)
lbl_809CE438:
/* 809CE438  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809CE43C  28 00 00 00 */	cmplwi r0, 0
/* 809CE440  40 82 00 38 */	bne lbl_809CE478
/* 809CE444  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809CE448  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809CE44C  7C 04 00 00 */	cmpw r4, r0
/* 809CE450  41 82 00 28 */	beq lbl_809CE478
/* 809CE454  7F E3 FB 78 */	mr r3, r31
/* 809CE458  38 A0 00 0E */	li r5, 0xe
/* 809CE45C  38 C0 00 08 */	li r6, 8
/* 809CE460  38 E0 00 0F */	li r7, 0xf
/* 809CE464  4B 78 5C 41 */	bl step__8daNpcF_cFsiii
/* 809CE468  2C 03 00 00 */	cmpwi r3, 0
/* 809CE46C  41 82 00 0C */	beq lbl_809CE478
/* 809CE470  38 00 00 00 */	li r0, 0
/* 809CE474  B0 1F 0E 46 */	sth r0, 0xe46(r31)
lbl_809CE478:
/* 809CE478  38 60 00 01 */	li r3, 1
/* 809CE47C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CE480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CE484  7C 08 03 A6 */	mtlr r0
/* 809CE488  38 21 00 10 */	addi r1, r1, 0x10
/* 809CE48C  4E 80 00 20 */	blr 
