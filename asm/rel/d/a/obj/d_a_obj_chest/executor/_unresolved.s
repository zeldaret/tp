lbl_80BC8ED8:
/* 80BC8ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC8EDC  7C 08 02 A6 */	mflr r0
/* 80BC8EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC8EE4  4B 69 A1 AC */	b ModuleUnresolved
/* 80BC8EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC8EEC  7C 08 03 A6 */	mtlr r0
/* 80BC8EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC8EF4  4E 80 00 20 */	blr 
