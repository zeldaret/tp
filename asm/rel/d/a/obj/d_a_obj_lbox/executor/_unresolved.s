lbl_80C534D8:
/* 80C534D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C534DC  7C 08 02 A6 */	mflr r0
/* 80C534E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C534E4  4B 60 FB AC */	b ModuleUnresolved
/* 80C534E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C534EC  7C 08 03 A6 */	mtlr r0
/* 80C534F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C534F4  4E 80 00 20 */	blr 
