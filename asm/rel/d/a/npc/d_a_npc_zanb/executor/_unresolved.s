lbl_80B68E98:
/* 80B68E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B68E9C  7C 08 02 A6 */	mflr r0
/* 80B68EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B68EA4  4B 6F A1 EC */	b ModuleUnresolved
/* 80B68EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B68EAC  7C 08 03 A6 */	mtlr r0
/* 80B68EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B68EB4  4E 80 00 20 */	blr 
