lbl_80AC9AC0:
/* 80AC9AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC9AC4  7C 08 02 A6 */	mflr r0
/* 80AC9AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC9ACC  38 80 FF FF */	li r4, -1
/* 80AC9AD0  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AC9AD4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AC9AD8  7D 89 03 A6 */	mtctr r12
/* 80AC9ADC  4E 80 04 21 */	bctrl 
/* 80AC9AE0  38 60 00 01 */	li r3, 1
/* 80AC9AE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC9AE8  7C 08 03 A6 */	mtlr r0
/* 80AC9AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC9AF0  4E 80 00 20 */	blr 
