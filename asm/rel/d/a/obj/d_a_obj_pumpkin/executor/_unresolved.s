lbl_80CB56F8:
/* 80CB56F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB56FC  7C 08 02 A6 */	mflr r0
/* 80CB5700  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5704  4B 5A D9 8C */	b ModuleUnresolved
/* 80CB5708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB570C  7C 08 03 A6 */	mtlr r0
/* 80CB5710  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB5714  4E 80 00 20 */	blr 
