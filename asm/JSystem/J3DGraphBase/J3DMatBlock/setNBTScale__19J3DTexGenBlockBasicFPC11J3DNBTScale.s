lbl_80322C9C:
/* 80322C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80322CA0  7C 08 02 A6 */	mflr r0
/* 80322CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80322CA8  38 63 00 5C */	addi r3, r3, 0x5c
/* 80322CAC  48 00 2B D1 */	bl __as__15J3DNBTScaleInfoFRC15J3DNBTScaleInfo
/* 80322CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322CB4  7C 08 03 A6 */	mtlr r0
/* 80322CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80322CBC  4E 80 00 20 */	blr 
