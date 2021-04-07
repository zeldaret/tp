lbl_80D4FE5C:
/* 80D4FE5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4FE60  7C 08 02 A6 */	mflr r0
/* 80D4FE64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4FE68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4FE6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4FE70  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D4FE74  7C 9F 23 78 */	mr r31, r4
/* 80D4FE78  41 82 00 28 */	beq lbl_80D4FEA0
/* 80D4FE7C  3C 80 80 3B */	lis r4, __vt__4dBgW@ha /* 0x803ABA80@ha */
/* 80D4FE80  38 04 BA 80 */	addi r0, r4, __vt__4dBgW@l /* 0x803ABA80@l */
/* 80D4FE84  90 1E 00 04 */	stw r0, 4(r30)
/* 80D4FE88  38 80 00 00 */	li r4, 0
/* 80D4FE8C  4B 32 94 B1 */	bl __dt__4cBgWFv
/* 80D4FE90  7F E0 07 35 */	extsh. r0, r31
/* 80D4FE94  40 81 00 0C */	ble lbl_80D4FEA0
/* 80D4FE98  7F C3 F3 78 */	mr r3, r30
/* 80D4FE9C  4B 57 EE A1 */	bl __dl__FPv
lbl_80D4FEA0:
/* 80D4FEA0  7F C3 F3 78 */	mr r3, r30
/* 80D4FEA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4FEA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4FEAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4FEB0  7C 08 03 A6 */	mtlr r0
/* 80D4FEB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4FEB8  4E 80 00 20 */	blr 
