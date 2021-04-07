lbl_8054FAA8:
/* 8054FAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054FAAC  7C 08 02 A6 */	mflr r0
/* 8054FAB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054FAB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054FAB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8054FABC  41 82 00 10 */	beq lbl_8054FACC
/* 8054FAC0  7C 80 07 35 */	extsh. r0, r4
/* 8054FAC4  40 81 00 08 */	ble lbl_8054FACC
/* 8054FAC8  4B D7 F2 75 */	bl __dl__FPv
lbl_8054FACC:
/* 8054FACC  7F E3 FB 78 */	mr r3, r31
/* 8054FAD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054FAD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054FAD8  7C 08 03 A6 */	mtlr r0
/* 8054FADC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054FAE0  4E 80 00 20 */	blr 
