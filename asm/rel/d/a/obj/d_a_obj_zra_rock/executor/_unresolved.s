lbl_80D44C98:
/* 80D44C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D44C9C  7C 08 02 A6 */	mflr r0
/* 80D44CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D44CA4  4B 51 E3 EC */	b ModuleUnresolved
/* 80D44CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D44CAC  7C 08 03 A6 */	mtlr r0
/* 80D44CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D44CB4  4E 80 00 20 */	blr 
