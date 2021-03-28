lbl_8020E45C:
/* 8020E45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020E460  7C 08 02 A6 */	mflr r0
/* 8020E464  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020E468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020E46C  7C 7F 1B 78 */	mr r31, r3
/* 8020E470  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8020E474  48 00 00 55 */	bl isShow__11dMeterMap_cFUl
/* 8020E478  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E47C  41 82 00 34 */	beq lbl_8020E4B0
/* 8020E480  4B FF F1 D1 */	bl isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv
/* 8020E484  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020E488  41 82 00 20 */	beq lbl_8020E4A8
/* 8020E48C  88 1F 00 2D */	lbz r0, 0x2d(r31)
/* 8020E490  28 00 00 00 */	cmplwi r0, 0
/* 8020E494  41 82 00 0C */	beq lbl_8020E4A0
/* 8020E498  38 60 00 01 */	li r3, 1
/* 8020E49C  48 00 00 18 */	b lbl_8020E4B4
lbl_8020E4A0:
/* 8020E4A0  38 60 00 02 */	li r3, 2
/* 8020E4A4  48 00 00 10 */	b lbl_8020E4B4
lbl_8020E4A8:
/* 8020E4A8  38 60 00 03 */	li r3, 3
/* 8020E4AC  48 00 00 08 */	b lbl_8020E4B4
lbl_8020E4B0:
/* 8020E4B0  38 60 00 00 */	li r3, 0
lbl_8020E4B4:
/* 8020E4B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020E4B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020E4BC  7C 08 03 A6 */	mtlr r0
/* 8020E4C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8020E4C4  4E 80 00 20 */	blr 
