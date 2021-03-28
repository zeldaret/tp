lbl_80490C6C:
/* 80490C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80490C70  7C 08 02 A6 */	mflr r0
/* 80490C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80490C78  4B DD 24 14 */	b ModuleEpilog
/* 80490C7C  3C 60 80 49 */	lis r3, __destroy_global_chain_reference@ha
/* 80490C80  38 63 61 C8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80490C84  4B DD 25 0C */	b ModuleDestructorsX
/* 80490C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80490C8C  7C 08 03 A6 */	mtlr r0
/* 80490C90  38 21 00 10 */	addi r1, r1, 0x10
/* 80490C94  4E 80 00 20 */	blr 
