lbl_80B6AF24:
/* 80B6AF24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6AF28  7C 08 02 A6 */	mflr r0
/* 80B6AF2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6AF30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6AF34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6AF38  41 82 00 10 */	beq lbl_80B6AF48
/* 80B6AF3C  7C 80 07 35 */	extsh. r0, r4
/* 80B6AF40  40 81 00 08 */	ble lbl_80B6AF48
/* 80B6AF44  4B 76 3D F8 */	b __dl__FPv
lbl_80B6AF48:
/* 80B6AF48  7F E3 FB 78 */	mr r3, r31
/* 80B6AF4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6AF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6AF54  7C 08 03 A6 */	mtlr r0
/* 80B6AF58  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6AF5C  4E 80 00 20 */	blr 
