lbl_801C0B48:
/* 801C0B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0B4C  7C 08 02 A6 */	mflr r0
/* 801C0B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0B54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C0B58  93 C1 00 08 */	stw r30, 8(r1)
/* 801C0B5C  7C 9E 23 78 */	mr r30, r4
/* 801C0B60  3B E2 A6 64 */	la r31, l_lineWidthPatOff_3807(r2) /* 80454064-_SDA2_BASE_ */
/* 801C0B64  80 83 00 24 */	lwz r4, 0x24(r3)
/* 801C0B68  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 801C0B6C  7C 04 00 00 */	cmpw r4, r0
/* 801C0B70  40 82 00 0C */	bne lbl_801C0B7C
/* 801C0B74  3B E2 A6 74 */	la r31, l_lineWidthPatStay_3809(r2) /* 80454074-_SDA2_BASE_ */
/* 801C0B78  48 00 00 18 */	b lbl_801C0B90
lbl_801C0B7C:
/* 801C0B7C  7C 83 23 78 */	mr r3, r4
/* 801C0B80  4B E7 E1 91 */	bl isVisitedRoom__10dMapInfo_nFi
/* 801C0B84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C0B88  41 82 00 08 */	beq lbl_801C0B90
/* 801C0B8C  3B E2 A6 6C */	la r31, l_lineWidthPatOn_3808(r2) /* 8045406C-_SDA2_BASE_ */
lbl_801C0B90:
/* 801C0B90  7C 7F F0 AE */	lbzx r3, r31, r30
/* 801C0B94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0B98  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C0B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0BA0  7C 08 03 A6 */	mtlr r0
/* 801C0BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0BA8  4E 80 00 20 */	blr 
