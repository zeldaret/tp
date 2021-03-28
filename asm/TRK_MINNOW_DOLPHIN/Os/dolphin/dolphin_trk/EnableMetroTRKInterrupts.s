lbl_80371B7C:
/* 80371B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371B80  7C 08 02 A6 */	mflr r0
/* 80371B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371B88  48 00 02 89 */	bl EnableEXI2Interrupts
/* 80371B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371B90  7C 08 03 A6 */	mtlr r0
/* 80371B94  38 21 00 10 */	addi r1, r1, 0x10
/* 80371B98  4E 80 00 20 */	blr 
