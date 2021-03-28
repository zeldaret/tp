lbl_80D64E98:
/* 80D64E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D64E9C  7C 08 02 A6 */	mflr r0
/* 80D64EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D64EA4  4B 4F E1 EC */	b ModuleUnresolved
/* 80D64EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D64EAC  7C 08 03 A6 */	mtlr r0
/* 80D64EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D64EB4  4E 80 00 20 */	blr 
