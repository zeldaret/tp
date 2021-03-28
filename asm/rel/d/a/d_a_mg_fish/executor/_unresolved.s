lbl_80529C98:
/* 80529C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529C9C  7C 08 02 A6 */	mflr r0
/* 80529CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529CA4  4B D3 93 EC */	b ModuleUnresolved
/* 80529CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529CAC  7C 08 03 A6 */	mtlr r0
/* 80529CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80529CB4  4E 80 00 20 */	blr 
