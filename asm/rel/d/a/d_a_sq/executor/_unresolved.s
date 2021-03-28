lbl_8059F5D8:
/* 8059F5D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059F5DC  7C 08 02 A6 */	mflr r0
/* 8059F5E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059F5E4  4B CC 3A AC */	b ModuleUnresolved
/* 8059F5E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059F5EC  7C 08 03 A6 */	mtlr r0
/* 8059F5F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8059F5F4  4E 80 00 20 */	blr 
