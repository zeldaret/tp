lbl_80B757BC:
/* 80B757BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B757C0  7C 08 02 A6 */	mflr r0
/* 80B757C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B757C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B757CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B757D0  41 82 00 10 */	beq lbl_80B757E0
/* 80B757D4  7C 80 07 35 */	extsh. r0, r4
/* 80B757D8  40 81 00 08 */	ble lbl_80B757E0
/* 80B757DC  4B 75 95 61 */	bl __dl__FPv
lbl_80B757E0:
/* 80B757E0  7F E3 FB 78 */	mr r3, r31
/* 80B757E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B757E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B757EC  7C 08 03 A6 */	mtlr r0
/* 80B757F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B757F4  4E 80 00 20 */	blr 
