lbl_80BC4A6C:
/* 80BC4A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC4A70  7C 08 02 A6 */	mflr r0
/* 80BC4A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC4A78  4B 69 E6 14 */	b ModuleEpilog
/* 80BC4A7C  3C 60 80 BC */	lis r3, __destroy_global_chain_reference@ha
/* 80BC4A80  38 63 57 D8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BC4A84  4B 69 E7 0C */	b ModuleDestructorsX
/* 80BC4A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC4A8C  7C 08 03 A6 */	mtlr r0
/* 80BC4A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC4A94  4E 80 00 20 */	blr 
