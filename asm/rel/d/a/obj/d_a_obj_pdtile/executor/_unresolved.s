lbl_80CAAC98:
/* 80CAAC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAAC9C  7C 08 02 A6 */	mflr r0
/* 80CAACA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAACA4  4B 5B 83 EC */	b ModuleUnresolved
/* 80CAACA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAACAC  7C 08 03 A6 */	mtlr r0
/* 80CAACB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAACB4  4E 80 00 20 */	blr 
