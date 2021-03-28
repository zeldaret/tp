lbl_80BC8EAC:
/* 80BC8EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC8EB0  7C 08 02 A6 */	mflr r0
/* 80BC8EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC8EB8  4B 69 A1 D4 */	b ModuleEpilog
/* 80BC8EBC  3C 60 80 BD */	lis r3, data_80BC9FF8@ha
/* 80BC8EC0  38 63 9F F8 */	addi r3, r3, data_80BC9FF8@l
/* 80BC8EC4  4B 69 A2 CC */	b ModuleDestructorsX
/* 80BC8EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC8ECC  7C 08 03 A6 */	mtlr r0
/* 80BC8ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC8ED4  4E 80 00 20 */	blr 
