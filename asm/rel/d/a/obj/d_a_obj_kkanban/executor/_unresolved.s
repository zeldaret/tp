lbl_80C46678:
/* 80C46678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4667C  7C 08 02 A6 */	mflr r0
/* 80C46680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46684  4B 61 CA 0C */	b ModuleUnresolved
/* 80C46688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4668C  7C 08 03 A6 */	mtlr r0
/* 80C46690  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46694  4E 80 00 20 */	blr 
