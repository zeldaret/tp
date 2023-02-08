lbl_8098CB28:
/* 8098CB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098CB2C  7C 08 02 A6 */	mflr r0
/* 8098CB30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098CB34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098CB38  7C 7F 1B 79 */	or. r31, r3, r3
/* 8098CB3C  41 82 00 10 */	beq lbl_8098CB4C
/* 8098CB40  7C 80 07 35 */	extsh. r0, r4
/* 8098CB44  40 81 00 08 */	ble lbl_8098CB4C
/* 8098CB48  4B 94 21 F5 */	bl __dl__FPv
lbl_8098CB4C:
/* 8098CB4C  7F E3 FB 78 */	mr r3, r31
/* 8098CB50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098CB54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098CB58  7C 08 03 A6 */	mtlr r0
/* 8098CB5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8098CB60  4E 80 00 20 */	blr 
