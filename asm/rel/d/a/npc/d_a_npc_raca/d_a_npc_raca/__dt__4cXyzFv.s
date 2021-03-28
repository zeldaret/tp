lbl_80AB7FC8:
/* 80AB7FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB7FCC  7C 08 02 A6 */	mflr r0
/* 80AB7FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB7FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB7FD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB7FDC  41 82 00 10 */	beq lbl_80AB7FEC
/* 80AB7FE0  7C 80 07 35 */	extsh. r0, r4
/* 80AB7FE4  40 81 00 08 */	ble lbl_80AB7FEC
/* 80AB7FE8  4B 81 6D 54 */	b __dl__FPv
lbl_80AB7FEC:
/* 80AB7FEC  7F E3 FB 78 */	mr r3, r31
/* 80AB7FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB7FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB7FF8  7C 08 03 A6 */	mtlr r0
/* 80AB7FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB8000  4E 80 00 20 */	blr 
