lbl_807060D8:
/* 807060D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807060DC  7C 08 02 A6 */	mflr r0
/* 807060E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807060E4  4B B5 CF AC */	b ModuleUnresolved
/* 807060E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807060EC  7C 08 03 A6 */	mtlr r0
/* 807060F0  38 21 00 10 */	addi r1, r1, 0x10
/* 807060F4  4E 80 00 20 */	blr 
