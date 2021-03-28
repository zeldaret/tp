lbl_80457E8C:
/* 80457E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80457E90  7C 08 02 A6 */	mflr r0
/* 80457E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80457E98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80457E9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80457EA0  41 82 00 10 */	beq lbl_80457EB0
/* 80457EA4  7C 80 07 35 */	extsh. r0, r4
/* 80457EA8  40 81 00 08 */	ble lbl_80457EB0
/* 80457EAC  4B E7 6E 90 */	b __dl__FPv
lbl_80457EB0:
/* 80457EB0  7F E3 FB 78 */	mr r3, r31
/* 80457EB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80457EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80457EBC  7C 08 03 A6 */	mtlr r0
/* 80457EC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80457EC4  4E 80 00 20 */	blr 
