lbl_80A64A78:
/* 80A64A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A64A7C  7C 08 02 A6 */	mflr r0
/* 80A64A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A64A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A64A88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A64A8C  41 82 00 10 */	beq lbl_80A64A9C
/* 80A64A90  7C 80 07 35 */	extsh. r0, r4
/* 80A64A94  40 81 00 08 */	ble lbl_80A64A9C
/* 80A64A98  4B 86 A2 A5 */	bl __dl__FPv
lbl_80A64A9C:
/* 80A64A9C  7F E3 FB 78 */	mr r3, r31
/* 80A64AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A64AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A64AA8  7C 08 03 A6 */	mtlr r0
/* 80A64AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A64AB0  4E 80 00 20 */	blr 
