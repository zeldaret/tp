lbl_807BBFD8:
/* 807BBFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BBFDC  7C 08 02 A6 */	mflr r0
/* 807BBFE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BBFE4  4B AA 70 AC */	b ModuleUnresolved
/* 807BBFE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BBFEC  7C 08 03 A6 */	mtlr r0
/* 807BBFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 807BBFF4  4E 80 00 20 */	blr 
