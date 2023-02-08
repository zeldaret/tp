lbl_80322DB4:
/* 80322DB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80322DB8  7C 08 02 A6 */	mflr r0
/* 80322DBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80322DC0  38 63 00 5C */	addi r3, r3, 0x5c
/* 80322DC4  48 00 2A B9 */	bl __as__15J3DNBTScaleInfoFRC15J3DNBTScaleInfo
/* 80322DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322DCC  7C 08 03 A6 */	mtlr r0
/* 80322DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80322DD4  4E 80 00 20 */	blr 
