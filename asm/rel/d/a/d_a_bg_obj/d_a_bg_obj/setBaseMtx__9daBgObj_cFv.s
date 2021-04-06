lbl_80459D94:
/* 80459D94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80459D98  7C 08 02 A6 */	mflr r0
/* 80459D9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80459DA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80459DA4  4B F0 84 39 */	bl _savegpr_29
/* 80459DA8  7C 7D 1B 78 */	mr r29, r3
/* 80459DAC  3B C0 00 00 */	li r30, 0
/* 80459DB0  3B E0 00 00 */	li r31, 0
lbl_80459DB4:
/* 80459DB4  88 1D 0C C8 */	lbz r0, 0xcc8(r29)
/* 80459DB8  54 00 18 38 */	slwi r0, r0, 3
/* 80459DBC  7C 60 FA 14 */	add r3, r0, r31
/* 80459DC0  38 03 05 A8 */	addi r0, r3, 0x5a8
/* 80459DC4  7C 9D 00 2E */	lwzx r4, r29, r0
/* 80459DC8  28 04 00 00 */	cmplwi r4, 0
/* 80459DCC  41 82 00 10 */	beq lbl_80459DDC
/* 80459DD0  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80459DD4  38 84 00 24 */	addi r4, r4, 0x24
/* 80459DD8  4B EE C6 D9 */	bl PSMTXCopy
lbl_80459DDC:
/* 80459DDC  3B DE 00 01 */	addi r30, r30, 1
/* 80459DE0  2C 1E 00 02 */	cmpwi r30, 2
/* 80459DE4  3B FF 00 04 */	addi r31, r31, 4
/* 80459DE8  41 80 FF CC */	blt lbl_80459DB4
/* 80459DEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80459DF0  4B F0 84 39 */	bl _restgpr_29
/* 80459DF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80459DF8  7C 08 03 A6 */	mtlr r0
/* 80459DFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80459E00  4E 80 00 20 */	blr 
