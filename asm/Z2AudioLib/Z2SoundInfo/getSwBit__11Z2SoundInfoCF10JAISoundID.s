lbl_802BBAC8:
/* 802BBAC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BBACC  7C 08 02 A6 */	mflr r0
/* 802BBAD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BBAD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BBAD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BBADC  7C 9E 23 78 */	mr r30, r4
/* 802BBAE0  80 04 00 00 */	lwz r0, 0(r4)
/* 802BBAE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BBAE8  80 6D 85 D8 */	lwz r3, __OSReport_disable-0x40(r13)
/* 802BBAEC  38 81 00 0C */	addi r4, r1, 0xc
/* 802BBAF0  4B FE B7 9D */	bl getData__13JAUSoundTableCF10JAISoundID
/* 802BBAF4  7C 7F 1B 78 */	mr r31, r3
/* 802BBAF8  80 1E 00 00 */	lwz r0, 0(r30)
/* 802BBAFC  90 01 00 08 */	stw r0, 8(r1)
/* 802BBB00  80 6D 85 D8 */	lwz r3, __OSReport_disable-0x40(r13)
/* 802BBB04  38 81 00 08 */	addi r4, r1, 8
/* 802BBB08  4B FE B6 59 */	bl getTypeID__13JAUSoundTableCF10JAISoundID
/* 802BBB0C  28 1F 00 00 */	cmplwi r31, 0
/* 802BBB10  41 82 00 1C */	beq lbl_802BBB2C
/* 802BBB14  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802BBB18  2C 00 00 51 */	cmpwi r0, 0x51
/* 802BBB1C  41 82 00 08 */	beq lbl_802BBB24
/* 802BBB20  48 00 00 0C */	b lbl_802BBB2C
lbl_802BBB24:
/* 802BBB24  80 7F 00 04 */	lwz r3, 4(r31)
/* 802BBB28  48 00 00 08 */	b lbl_802BBB30
lbl_802BBB2C:
/* 802BBB2C  38 60 FF FF */	li r3, -1
lbl_802BBB30:
/* 802BBB30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BBB34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BBB38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BBB3C  7C 08 03 A6 */	mtlr r0
/* 802BBB40  38 21 00 20 */	addi r1, r1, 0x20
/* 802BBB44  4E 80 00 20 */	blr 
