lbl_80D3F418:
/* 80D3F418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F41C  7C 08 02 A6 */	mflr r0
/* 80D3F420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F424  4B 52 3C 6C */	b ModuleUnresolved
/* 80D3F428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3F42C  7C 08 03 A6 */	mtlr r0
/* 80D3F430  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3F434  4E 80 00 20 */	blr 
