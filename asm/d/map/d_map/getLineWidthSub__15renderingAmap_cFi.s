lbl_80028C90:
/* 80028C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80028C94  7C 08 02 A6 */	mflr r0
/* 80028C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80028C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80028CA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80028CA4  7C 9E 23 78 */	mr r30, r4
/* 80028CA8  3B E2 82 C0 */	la r31, l_lineWidthPatOff(r2) /* 80451CC0-_SDA2_BASE_ */
/* 80028CAC  80 83 00 24 */	lwz r4, 0x24(r3)
/* 80028CB0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80028CB4  7C 04 00 00 */	cmpw r4, r0
/* 80028CB8  40 82 00 0C */	bne lbl_80028CC4
/* 80028CBC  3B E2 82 D0 */	la r31, l_lineWidthPatStay(r2) /* 80451CD0-_SDA2_BASE_ */
/* 80028CC0  48 00 00 18 */	b lbl_80028CD8
lbl_80028CC4:
/* 80028CC4  7C 83 23 78 */	mr r3, r4
/* 80028CC8  48 01 60 49 */	bl isVisitedRoom__10dMapInfo_nFi
/* 80028CCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80028CD0  41 82 00 08 */	beq lbl_80028CD8
/* 80028CD4  3B E2 82 C8 */	la r31, l_lineWidthPatOn(r2) /* 80451CC8-_SDA2_BASE_ */
lbl_80028CD8:
/* 80028CD8  7C 7F F0 AE */	lbzx r3, r31, r30
/* 80028CDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80028CE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80028CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80028CE8  7C 08 03 A6 */	mtlr r0
/* 80028CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80028CF0  4E 80 00 20 */	blr 
