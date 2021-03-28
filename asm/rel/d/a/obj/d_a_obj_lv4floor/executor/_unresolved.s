lbl_80C677D8:
/* 80C677D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C677DC  7C 08 02 A6 */	mflr r0
/* 80C677E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C677E4  4B 5F B8 AC */	b ModuleUnresolved
/* 80C677E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C677EC  7C 08 03 A6 */	mtlr r0
/* 80C677F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C677F4  4E 80 00 20 */	blr 
