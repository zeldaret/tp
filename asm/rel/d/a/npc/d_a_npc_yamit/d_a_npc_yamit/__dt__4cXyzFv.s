lbl_80B4BF4C:
/* 80B4BF4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4BF50  7C 08 02 A6 */	mflr r0
/* 80B4BF54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4BF58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4BF5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4BF60  41 82 00 10 */	beq lbl_80B4BF70
/* 80B4BF64  7C 80 07 35 */	extsh. r0, r4
/* 80B4BF68  40 81 00 08 */	ble lbl_80B4BF70
/* 80B4BF6C  4B 78 2D D1 */	bl __dl__FPv
lbl_80B4BF70:
/* 80B4BF70  7F E3 FB 78 */	mr r3, r31
/* 80B4BF74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4BF78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4BF7C  7C 08 03 A6 */	mtlr r0
/* 80B4BF80  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4BF84  4E 80 00 20 */	blr 
