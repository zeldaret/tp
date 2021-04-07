lbl_80A0EE94:
/* 80A0EE94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0EE98  7C 08 02 A6 */	mflr r0
/* 80A0EE9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0EEA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0EEA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A0EEA8  41 82 00 10 */	beq lbl_80A0EEB8
/* 80A0EEAC  7C 80 07 35 */	extsh. r0, r4
/* 80A0EEB0  40 81 00 08 */	ble lbl_80A0EEB8
/* 80A0EEB4  4B 8B FE 89 */	bl __dl__FPv
lbl_80A0EEB8:
/* 80A0EEB8  7F E3 FB 78 */	mr r3, r31
/* 80A0EEBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0EEC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0EEC4  7C 08 03 A6 */	mtlr r0
/* 80A0EEC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0EECC  4E 80 00 20 */	blr 
