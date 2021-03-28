lbl_801C0BAC:
/* 801C0BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0BB0  7C 08 02 A6 */	mflr r0
/* 801C0BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0BB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C0BBC  93 C1 00 08 */	stw r30, 8(r1)
/* 801C0BC0  7C 9E 23 78 */	mr r30, r4
/* 801C0BC4  3B E2 A6 7C */	la r31, l_lineWidthPatOff_3820(r2) /* 8045407C-_SDA2_BASE_ */
/* 801C0BC8  80 83 00 24 */	lwz r4, 0x24(r3)
/* 801C0BCC  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 801C0BD0  7C 04 00 00 */	cmpw r4, r0
/* 801C0BD4  40 82 00 0C */	bne lbl_801C0BE0
/* 801C0BD8  3B E2 A6 8C */	la r31, l_lineWidthPatStay_3822(r2) /* 8045408C-_SDA2_BASE_ */
/* 801C0BDC  48 00 00 18 */	b lbl_801C0BF4
lbl_801C0BE0:
/* 801C0BE0  7C 83 23 78 */	mr r3, r4
/* 801C0BE4  4B E7 E1 2D */	bl isVisitedRoom__10dMapInfo_nFi
/* 801C0BE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C0BEC  41 82 00 08 */	beq lbl_801C0BF4
/* 801C0BF0  3B E2 A6 84 */	la r31, l_lineWidthPatOn_3821(r2) /* 80454084-_SDA2_BASE_ */
lbl_801C0BF4:
/* 801C0BF4  7C 7F F0 AE */	lbzx r3, r31, r30
/* 801C0BF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0BFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C0C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0C04  7C 08 03 A6 */	mtlr r0
/* 801C0C08  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0C0C  4E 80 00 20 */	blr 
