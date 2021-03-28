lbl_802D5CE4:
/* 802D5CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5CE8  7C 08 02 A6 */	mflr r0
/* 802D5CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5CF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5CF4  7C 7F 1B 78 */	mr r31, r3
/* 802D5CF8  48 00 09 8D */	bl findIdxResource__10JKRArchiveCFUl
/* 802D5CFC  7C 64 1B 79 */	or. r4, r3, r3
/* 802D5D00  41 82 00 20 */	beq lbl_802D5D20
/* 802D5D04  7F E3 FB 78 */	mr r3, r31
/* 802D5D08  38 A0 00 00 */	li r5, 0
/* 802D5D0C  81 9F 00 00 */	lwz r12, 0(r31)
/* 802D5D10  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802D5D14  7D 89 03 A6 */	mtctr r12
/* 802D5D18  4E 80 04 21 */	bctrl 
/* 802D5D1C  48 00 00 08 */	b lbl_802D5D24
lbl_802D5D20:
/* 802D5D20  38 60 00 00 */	li r3, 0
lbl_802D5D24:
/* 802D5D24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5D2C  7C 08 03 A6 */	mtlr r0
/* 802D5D30  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5D34  4E 80 00 20 */	blr 
