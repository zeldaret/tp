lbl_806BBA0C:
/* 806BBA0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BBA10  7C 08 02 A6 */	mflr r0
/* 806BBA14  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BBA18  4B BA 76 74 */	b ModuleEpilog
/* 806BBA1C  3C 60 80 6C */	lis r3, __destroy_global_chain_reference@ha
/* 806BBA20  38 63 E4 80 */	addi r3, r3, __destroy_global_chain_reference@l
/* 806BBA24  4B BA 77 6C */	b ModuleDestructorsX
/* 806BBA28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BBA2C  7C 08 03 A6 */	mtlr r0
/* 806BBA30  38 21 00 10 */	addi r1, r1, 0x10
/* 806BBA34  4E 80 00 20 */	blr 
