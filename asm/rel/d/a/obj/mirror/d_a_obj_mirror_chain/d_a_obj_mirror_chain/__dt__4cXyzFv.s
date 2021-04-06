lbl_80C96DAC:
/* 80C96DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C96DB0  7C 08 02 A6 */	mflr r0
/* 80C96DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C96DB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C96DBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C96DC0  41 82 00 10 */	beq lbl_80C96DD0
/* 80C96DC4  7C 80 07 35 */	extsh. r0, r4
/* 80C96DC8  40 81 00 08 */	ble lbl_80C96DD0
/* 80C96DCC  4B 63 7F 71 */	bl __dl__FPv
lbl_80C96DD0:
/* 80C96DD0  7F E3 FB 78 */	mr r3, r31
/* 80C96DD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C96DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C96DDC  7C 08 03 A6 */	mtlr r0
/* 80C96DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C96DE4  4E 80 00 20 */	blr 
