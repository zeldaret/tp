lbl_80B1EE80:
/* 80B1EE80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1EE84  7C 08 02 A6 */	mflr r0
/* 80B1EE88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1EE8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1EE90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B1EE94  41 82 00 10 */	beq lbl_80B1EEA4
/* 80B1EE98  7C 80 07 35 */	extsh. r0, r4
/* 80B1EE9C  40 81 00 08 */	ble lbl_80B1EEA4
/* 80B1EEA0  4B 7A FE 9D */	bl __dl__FPv
lbl_80B1EEA4:
/* 80B1EEA4  7F E3 FB 78 */	mr r3, r31
/* 80B1EEA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1EEAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1EEB0  7C 08 03 A6 */	mtlr r0
/* 80B1EEB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1EEB8  4E 80 00 20 */	blr 
