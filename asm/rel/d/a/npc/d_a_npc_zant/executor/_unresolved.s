lbl_80B6C118:
/* 80B6C118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6C11C  7C 08 02 A6 */	mflr r0
/* 80B6C120  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6C124  4B 6F 6F 6C */	b ModuleUnresolved
/* 80B6C128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6C12C  7C 08 03 A6 */	mtlr r0
/* 80B6C130  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6C134  4E 80 00 20 */	blr 
