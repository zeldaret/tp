lbl_80AC74B8:
/* 80AC74B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC74BC  7C 08 02 A6 */	mflr r0
/* 80AC74C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC74C4  4B 79 BB CC */	b ModuleUnresolved
/* 80AC74C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC74CC  7C 08 03 A6 */	mtlr r0
/* 80AC74D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC74D4  4E 80 00 20 */	blr 
