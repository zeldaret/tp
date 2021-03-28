lbl_807C252C:
/* 807C252C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C2530  7C 08 02 A6 */	mflr r0
/* 807C2534  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C2538  4B AA 0B 54 */	b ModuleEpilog
/* 807C253C  3C 60 80 7D */	lis r3, __destroy_global_chain_reference@ha
/* 807C2540  38 63 EC 9C */	addi r3, r3, __destroy_global_chain_reference@l
/* 807C2544  4B AA 0C 4C */	b ModuleDestructorsX
/* 807C2548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C254C  7C 08 03 A6 */	mtlr r0
/* 807C2550  38 21 00 10 */	addi r1, r1, 0x10
/* 807C2554  4E 80 00 20 */	blr 
