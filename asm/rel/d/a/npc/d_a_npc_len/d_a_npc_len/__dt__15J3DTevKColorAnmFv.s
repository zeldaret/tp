lbl_80A64A24:
/* 80A64A24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A64A28  7C 08 02 A6 */	mflr r0
/* 80A64A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A64A30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A64A34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A64A38  41 82 00 10 */	beq lbl_80A64A48
/* 80A64A3C  7C 80 07 35 */	extsh. r0, r4
/* 80A64A40  40 81 00 08 */	ble lbl_80A64A48
/* 80A64A44  4B 86 A2 F9 */	bl __dl__FPv
lbl_80A64A48:
/* 80A64A48  7F E3 FB 78 */	mr r3, r31
/* 80A64A4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A64A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A64A54  7C 08 03 A6 */	mtlr r0
/* 80A64A58  38 21 00 10 */	addi r1, r1, 0x10
/* 80A64A5C  4E 80 00 20 */	blr 
