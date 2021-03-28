lbl_80322DD8:
/* 80322DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80322DDC  7C 08 02 A6 */	mflr r0
/* 80322DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80322DE4  38 63 00 5C */	addi r3, r3, 0x5c
/* 80322DE8  48 00 2A 95 */	bl __as__15J3DNBTScaleInfoFRC15J3DNBTScaleInfo
/* 80322DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322DF0  7C 08 03 A6 */	mtlr r0
/* 80322DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80322DF8  4E 80 00 20 */	blr 
