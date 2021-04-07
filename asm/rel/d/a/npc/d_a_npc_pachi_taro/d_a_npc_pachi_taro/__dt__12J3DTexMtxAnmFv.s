lbl_80A9CB30:
/* 80A9CB30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9CB34  7C 08 02 A6 */	mflr r0
/* 80A9CB38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9CB3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9CB40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9CB44  41 82 00 10 */	beq lbl_80A9CB54
/* 80A9CB48  7C 80 07 35 */	extsh. r0, r4
/* 80A9CB4C  40 81 00 08 */	ble lbl_80A9CB54
/* 80A9CB50  4B 83 21 ED */	bl __dl__FPv
lbl_80A9CB54:
/* 80A9CB54  7F E3 FB 78 */	mr r3, r31
/* 80A9CB58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9CB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9CB60  7C 08 03 A6 */	mtlr r0
/* 80A9CB64  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9CB68  4E 80 00 20 */	blr 
