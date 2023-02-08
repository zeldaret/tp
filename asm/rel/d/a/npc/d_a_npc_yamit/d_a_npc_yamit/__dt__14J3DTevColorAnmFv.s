lbl_80B4A2C0:
/* 80B4A2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4A2C4  7C 08 02 A6 */	mflr r0
/* 80B4A2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4A2CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4A2D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4A2D4  41 82 00 10 */	beq lbl_80B4A2E4
/* 80B4A2D8  7C 80 07 35 */	extsh. r0, r4
/* 80B4A2DC  40 81 00 08 */	ble lbl_80B4A2E4
/* 80B4A2E0  4B 78 4A 5D */	bl __dl__FPv
lbl_80B4A2E4:
/* 80B4A2E4  7F E3 FB 78 */	mr r3, r31
/* 80B4A2E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4A2EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4A2F0  7C 08 03 A6 */	mtlr r0
/* 80B4A2F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4A2F8  4E 80 00 20 */	blr 
