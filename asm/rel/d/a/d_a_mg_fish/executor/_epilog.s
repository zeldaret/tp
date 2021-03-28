lbl_80529C6C:
/* 80529C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529C70  7C 08 02 A6 */	mflr r0
/* 80529C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529C78  4B D3 94 14 */	b ModuleEpilog
/* 80529C7C  3C 60 80 53 */	lis r3, __destroy_global_chain_reference@ha
/* 80529C80  38 63 61 5C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80529C84  4B D3 95 0C */	b ModuleDestructorsX
/* 80529C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529C8C  7C 08 03 A6 */	mtlr r0
/* 80529C90  38 21 00 10 */	addi r1, r1, 0x10
/* 80529C94  4E 80 00 20 */	blr 
