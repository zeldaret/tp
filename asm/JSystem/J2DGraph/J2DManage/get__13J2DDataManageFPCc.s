lbl_8030CE18:
/* 8030CE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CE1C  7C 08 02 A6 */	mflr r0
/* 8030CE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CE24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030CE28  93 C1 00 08 */	stw r30, 8(r1)
/* 8030CE2C  7C 9E 23 78 */	mr r30, r4
/* 8030CE30  83 E3 00 00 */	lwz r31, 0(r3)
/* 8030CE34  48 00 00 24 */	b lbl_8030CE58
lbl_8030CE38:
/* 8030CE38  80 7F 00 04 */	lwz r3, 4(r31)
/* 8030CE3C  7F C4 F3 78 */	mr r4, r30
/* 8030CE40  48 05 BB 55 */	bl strcmp
/* 8030CE44  2C 03 00 00 */	cmpwi r3, 0
/* 8030CE48  40 82 00 0C */	bne lbl_8030CE54
/* 8030CE4C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8030CE50  48 00 00 14 */	b lbl_8030CE64
lbl_8030CE54:
/* 8030CE54  83 FF 00 08 */	lwz r31, 8(r31)
lbl_8030CE58:
/* 8030CE58  28 1F 00 00 */	cmplwi r31, 0
/* 8030CE5C  40 82 FF DC */	bne lbl_8030CE38
/* 8030CE60  38 60 00 00 */	li r3, 0
lbl_8030CE64:
/* 8030CE64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030CE68  83 C1 00 08 */	lwz r30, 8(r1)
/* 8030CE6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CE70  7C 08 03 A6 */	mtlr r0
/* 8030CE74  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CE78  4E 80 00 20 */	blr 
