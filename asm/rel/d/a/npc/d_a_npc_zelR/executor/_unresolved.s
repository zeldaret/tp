lbl_80B6ED98:
/* 80B6ED98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6ED9C  7C 08 02 A6 */	mflr r0
/* 80B6EDA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6EDA4  4B 6F 42 EC */	b ModuleUnresolved
/* 80B6EDA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6EDAC  7C 08 03 A6 */	mtlr r0
/* 80B6EDB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6EDB4  4E 80 00 20 */	blr 
