lbl_80B102AC:
/* 80B102AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B102B0  7C 08 02 A6 */	mflr r0
/* 80B102B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B102B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B102BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B102C0  41 82 00 10 */	beq lbl_80B102D0
/* 80B102C4  7C 80 07 35 */	extsh. r0, r4
/* 80B102C8  40 81 00 08 */	ble lbl_80B102D0
/* 80B102CC  4B 7B EA 71 */	bl __dl__FPv
lbl_80B102D0:
/* 80B102D0  7F E3 FB 78 */	mr r3, r31
/* 80B102D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B102D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B102DC  7C 08 03 A6 */	mtlr r0
/* 80B102E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B102E4  4E 80 00 20 */	blr 
