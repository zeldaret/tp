lbl_80A82A5C:
/* 80A82A5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A82A60  7C 08 02 A6 */	mflr r0
/* 80A82A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A82A68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A82A6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A82A70  41 82 00 10 */	beq lbl_80A82A80
/* 80A82A74  7C 80 07 35 */	extsh. r0, r4
/* 80A82A78  40 81 00 08 */	ble lbl_80A82A80
/* 80A82A7C  4B 84 C2 C0 */	b __dl__FPv
lbl_80A82A80:
/* 80A82A80  7F E3 FB 78 */	mr r3, r31
/* 80A82A84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A82A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A82A8C  7C 08 03 A6 */	mtlr r0
/* 80A82A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80A82A94  4E 80 00 20 */	blr 
