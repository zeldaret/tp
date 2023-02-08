lbl_801E3AA4:
/* 801E3AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E3AA8  7C 08 02 A6 */	mflr r0
/* 801E3AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E3AB0  80 63 00 58 */	lwz r3, 0x58(r3)
/* 801E3AB4  4B E4 E9 79 */	bl checkLeftTrigger__9STControlFv
/* 801E3AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E3ABC  7C 08 03 A6 */	mtlr r0
/* 801E3AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 801E3AC4  4E 80 00 20 */	blr 
