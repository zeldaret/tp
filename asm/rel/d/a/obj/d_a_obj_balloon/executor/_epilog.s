lbl_80BA7EEC:
/* 80BA7EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA7EF0  7C 08 02 A6 */	mflr r0
/* 80BA7EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA7EF8  4B 6B B1 94 */	b ModuleEpilog
/* 80BA7EFC  3C 60 80 BB */	lis r3, __destroy_global_chain_reference@ha
/* 80BA7F00  38 63 8E 00 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BA7F04  4B 6B B2 8C */	b ModuleDestructorsX
/* 80BA7F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA7F0C  7C 08 03 A6 */	mtlr r0
/* 80BA7F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA7F14  4E 80 00 20 */	blr 
