lbl_809CB40C:
/* 809CB40C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CB410  7C 08 02 A6 */	mflr r0
/* 809CB414  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CB418  4B 89 7C 74 */	b ModuleEpilog
/* 809CB41C  3C 60 80 9D */	lis r3, __destroy_global_chain_reference@ha
/* 809CB420  38 63 F5 10 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809CB424  4B 89 7D 6C */	b ModuleDestructorsX
/* 809CB428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CB42C  7C 08 03 A6 */	mtlr r0
/* 809CB430  38 21 00 10 */	addi r1, r1, 0x10
/* 809CB434  4E 80 00 20 */	blr 
