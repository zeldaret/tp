lbl_80A9CA70:
/* 80A9CA70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9CA74  7C 08 02 A6 */	mflr r0
/* 80A9CA78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9CA7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9CA80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9CA84  41 82 00 10 */	beq lbl_80A9CA94
/* 80A9CA88  7C 80 07 35 */	extsh. r0, r4
/* 80A9CA8C  40 81 00 08 */	ble lbl_80A9CA94
/* 80A9CA90  4B 83 22 AD */	bl __dl__FPv
lbl_80A9CA94:
/* 80A9CA94  7F E3 FB 78 */	mr r3, r31
/* 80A9CA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9CA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9CAA0  7C 08 03 A6 */	mtlr r0
/* 80A9CAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9CAA8  4E 80 00 20 */	blr 
