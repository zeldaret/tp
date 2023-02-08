lbl_805C7FCC:
/* 805C7FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7FD0  7C 08 02 A6 */	mflr r0
/* 805C7FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C7FDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805C7FE0  41 82 00 10 */	beq lbl_805C7FF0
/* 805C7FE4  7C 80 07 35 */	extsh. r0, r4
/* 805C7FE8  40 81 00 08 */	ble lbl_805C7FF0
/* 805C7FEC  4B D0 6D 51 */	bl __dl__FPv
lbl_805C7FF0:
/* 805C7FF0  7F E3 FB 78 */	mr r3, r31
/* 805C7FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C7FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C7FFC  7C 08 03 A6 */	mtlr r0
/* 805C8000  38 21 00 10 */	addi r1, r1, 0x10
/* 805C8004  4E 80 00 20 */	blr 
