lbl_808577D8:
/* 808577D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808577DC  7C 08 02 A6 */	mflr r0
/* 808577E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808577E4  4B A0 B8 AC */	b ModuleUnresolved
/* 808577E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808577EC  7C 08 03 A6 */	mtlr r0
/* 808577F0  38 21 00 10 */	addi r1, r1, 0x10
/* 808577F4  4E 80 00 20 */	blr 
