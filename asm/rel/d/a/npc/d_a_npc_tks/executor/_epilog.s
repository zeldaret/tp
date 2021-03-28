lbl_80B1456C:
/* 80B1456C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B14570  7C 08 02 A6 */	mflr r0
/* 80B14574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B14578  4B 74 EB 14 */	b ModuleEpilog
/* 80B1457C  3C 60 80 B2 */	lis r3, __destroy_global_chain_reference@ha
/* 80B14580  38 63 DD 4C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B14584  4B 74 EC 0C */	b ModuleDestructorsX
/* 80B14588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1458C  7C 08 03 A6 */	mtlr r0
/* 80B14590  38 21 00 10 */	addi r1, r1, 0x10
/* 80B14594  4E 80 00 20 */	blr 
