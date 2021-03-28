lbl_80A82A9C:
/* 80A82A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A82AA0  7C 08 02 A6 */	mflr r0
/* 80A82AA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A82AA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A82AAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A82AB0  41 82 00 10 */	beq lbl_80A82AC0
/* 80A82AB4  7C 80 07 35 */	extsh. r0, r4
/* 80A82AB8  40 81 00 08 */	ble lbl_80A82AC0
/* 80A82ABC  4B 84 C2 80 */	b __dl__FPv
lbl_80A82AC0:
/* 80A82AC0  7F E3 FB 78 */	mr r3, r31
/* 80A82AC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A82AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A82ACC  7C 08 03 A6 */	mtlr r0
/* 80A82AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A82AD4  4E 80 00 20 */	blr 
