lbl_807BD6EC:
/* 807BD6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BD6F0  7C 08 02 A6 */	mflr r0
/* 807BD6F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BD6F8  4B AA 59 94 */	b ModuleEpilog
/* 807BD6FC  3C 60 80 7C */	lis r3, __destroy_global_chain_reference@ha
/* 807BD700  38 63 1F AC */	addi r3, r3, __destroy_global_chain_reference@l
/* 807BD704  4B AA 5A 8C */	b ModuleDestructorsX
/* 807BD708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BD70C  7C 08 03 A6 */	mtlr r0
/* 807BD710  38 21 00 10 */	addi r1, r1, 0x10
/* 807BD714  4E 80 00 20 */	blr 
