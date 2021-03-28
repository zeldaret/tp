lbl_80AA74B8:
/* 80AA74B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA74BC  7C 08 02 A6 */	mflr r0
/* 80AA74C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA74C4  4B 7B BB CC */	b ModuleUnresolved
/* 80AA74C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA74CC  7C 08 03 A6 */	mtlr r0
/* 80AA74D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA74D4  4E 80 00 20 */	blr 
