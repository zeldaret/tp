lbl_80B1EDC0:
/* 80B1EDC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1EDC4  7C 08 02 A6 */	mflr r0
/* 80B1EDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1EDCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1EDD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B1EDD4  41 82 00 10 */	beq lbl_80B1EDE4
/* 80B1EDD8  7C 80 07 35 */	extsh. r0, r4
/* 80B1EDDC  40 81 00 08 */	ble lbl_80B1EDE4
/* 80B1EDE0  4B 7A FF 5C */	b __dl__FPv
lbl_80B1EDE4:
/* 80B1EDE4  7F E3 FB 78 */	mr r3, r31
/* 80B1EDE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1EDEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1EDF0  7C 08 03 A6 */	mtlr r0
/* 80B1EDF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1EDF8  4E 80 00 20 */	blr 
