lbl_8078506C:
/* 8078506C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80785070  7C 08 02 A6 */	mflr r0
/* 80785074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80785078  4B AD E0 14 */	b ModuleEpilog
/* 8078507C  3C 60 80 79 */	lis r3, __destroy_global_chain_reference@ha
/* 80785080  38 63 9C 2C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80785084  4B AD E1 0C */	b ModuleDestructorsX
/* 80785088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078508C  7C 08 03 A6 */	mtlr r0
/* 80785090  38 21 00 10 */	addi r1, r1, 0x10
/* 80785094  4E 80 00 20 */	blr 
