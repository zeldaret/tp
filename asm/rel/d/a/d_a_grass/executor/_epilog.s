lbl_8051BC8C:
/* 8051BC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BC90  7C 08 02 A6 */	mflr r0
/* 8051BC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BC98  4B D4 73 F4 */	b ModuleEpilog
/* 8051BC9C  3C 60 80 52 */	lis r3, __destroy_global_chain_reference@ha
/* 8051BCA0  38 63 30 1C */	addi r3, r3, __destroy_global_chain_reference@l
/* 8051BCA4  4B D4 74 EC */	b ModuleDestructorsX
/* 8051BCA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BCAC  7C 08 03 A6 */	mtlr r0
/* 8051BCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BCB4  4E 80 00 20 */	blr 
