lbl_80322C78:
/* 80322C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80322C7C  7C 08 02 A6 */	mflr r0
/* 80322C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80322C84  38 63 00 5C */	addi r3, r3, 0x5c
/* 80322C88  48 00 2B F5 */	bl __as__15J3DNBTScaleInfoFRC15J3DNBTScaleInfo
/* 80322C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322C90  7C 08 03 A6 */	mtlr r0
/* 80322C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80322C98  4E 80 00 20 */	blr 
