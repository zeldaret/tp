lbl_805C7A6C:
/* 805C7A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C7A70  7C 08 02 A6 */	mflr r0
/* 805C7A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C7A78  4B C9 B6 14 */	b ModuleEpilog
/* 805C7A7C  3C 60 80 5D */	lis r3, __destroy_global_chain_reference@ha
/* 805C7A80  38 63 AD 50 */	addi r3, r3, __destroy_global_chain_reference@l
/* 805C7A84  4B C9 B7 0C */	b ModuleDestructorsX
/* 805C7A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C7A8C  7C 08 03 A6 */	mtlr r0
/* 805C7A90  38 21 00 10 */	addi r1, r1, 0x10
/* 805C7A94  4E 80 00 20 */	blr 
