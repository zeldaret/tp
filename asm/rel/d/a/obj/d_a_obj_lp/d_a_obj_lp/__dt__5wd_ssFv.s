lbl_80C559C8:
/* 80C559C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C559CC  7C 08 02 A6 */	mflr r0
/* 80C559D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C559D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C559D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C559DC  41 82 00 10 */	beq lbl_80C559EC
/* 80C559E0  7C 80 07 35 */	extsh. r0, r4
/* 80C559E4  40 81 00 08 */	ble lbl_80C559EC
/* 80C559E8  4B 67 93 55 */	bl __dl__FPv
lbl_80C559EC:
/* 80C559EC  7F E3 FB 78 */	mr r3, r31
/* 80C559F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C559F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C559F8  7C 08 03 A6 */	mtlr r0
/* 80C559FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C55A00  4E 80 00 20 */	blr 
