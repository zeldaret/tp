lbl_8031CA1C:
/* 8031CA1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031CA20  7C 08 02 A6 */	mflr r0
/* 8031CA24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031CA28  39 61 00 20 */	addi r11, r1, 0x20
/* 8031CA2C  48 04 57 AD */	bl _savegpr_28
/* 8031CA30  7C 7C 1B 78 */	mr r28, r3
/* 8031CA34  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031CA38  80 64 00 00 */	lwz r3, 0(r4)
/* 8031CA3C  80 1C 00 04 */	lwz r0, 4(r28)
/* 8031CA40  7C 03 02 14 */	add r0, r3, r0
/* 8031CA44  90 04 00 08 */	stw r0, 8(r4)
/* 8031CA48  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031CA4C  83 C3 00 08 */	lwz r30, 8(r3)
/* 8031CA50  3B A0 00 00 */	li r29, 0
/* 8031CA54  3B E0 00 00 */	li r31, 0
lbl_8031CA58:
/* 8031CA58  38 9F 00 08 */	addi r4, r31, 8
/* 8031CA5C  7C 9C 22 14 */	add r4, r28, r4
/* 8031CA60  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031CA64  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031CA68  41 82 00 0C */	beq lbl_8031CA74
/* 8031CA6C  7F A3 EB 78 */	mr r3, r29
/* 8031CA70  48 00 75 25 */	bl loadTexNo__FUlRCUs
lbl_8031CA74:
/* 8031CA74  3B BD 00 01 */	addi r29, r29, 1
/* 8031CA78  28 1D 00 08 */	cmplwi r29, 8
/* 8031CA7C  3B FF 00 02 */	addi r31, r31, 2
/* 8031CA80  41 80 FF D8 */	blt lbl_8031CA58
/* 8031CA84  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031CA88  80 03 00 08 */	lwz r0, 8(r3)
/* 8031CA8C  7F C3 F3 78 */	mr r3, r30
/* 8031CA90  7C 9E 00 50 */	subf r4, r30, r0
/* 8031CA94  48 01 EB 49 */	bl DCStoreRange
/* 8031CA98  39 61 00 20 */	addi r11, r1, 0x20
/* 8031CA9C  48 04 57 89 */	bl _restgpr_28
/* 8031CAA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031CAA4  7C 08 03 A6 */	mtlr r0
/* 8031CAA8  38 21 00 20 */	addi r1, r1, 0x20
/* 8031CAAC  4E 80 00 20 */	blr 
