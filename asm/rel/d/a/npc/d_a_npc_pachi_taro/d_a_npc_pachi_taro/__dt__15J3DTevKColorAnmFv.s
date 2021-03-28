lbl_80A9CA1C:
/* 80A9CA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9CA20  7C 08 02 A6 */	mflr r0
/* 80A9CA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9CA28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9CA2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9CA30  41 82 00 10 */	beq lbl_80A9CA40
/* 80A9CA34  7C 80 07 35 */	extsh. r0, r4
/* 80A9CA38  40 81 00 08 */	ble lbl_80A9CA40
/* 80A9CA3C  4B 83 23 00 */	b __dl__FPv
lbl_80A9CA40:
/* 80A9CA40  7F E3 FB 78 */	mr r3, r31
/* 80A9CA44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9CA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9CA4C  7C 08 03 A6 */	mtlr r0
/* 80A9CA50  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9CA54  4E 80 00 20 */	blr 
