lbl_80BD6320:
/* 80BD6320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6324  7C 08 02 A6 */	mflr r0
/* 80BD6328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD632C  3C 60 80 BD */	lis r3, data_80BD68B4@ha
/* 80BD6330  38 63 68 B4 */	addi r3, r3, data_80BD68B4@l
/* 80BD6334  4B 68 CE 18 */	b ModuleConstructorsX
/* 80BD6338  4B 68 CD 50 */	b ModuleProlog
/* 80BD633C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD6340  7C 08 03 A6 */	mtlr r0
/* 80BD6344  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6348  4E 80 00 20 */	blr 
