lbl_80BA9D6C:
/* 80BA9D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA9D70  7C 08 02 A6 */	mflr r0
/* 80BA9D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA9D78  4B 6B 93 14 */	b ModuleEpilog
/* 80BA9D7C  3C 60 80 BB */	lis r3, __destroy_global_chain_reference@ha
/* 80BA9D80  38 63 C9 64 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BA9D84  4B 6B 94 0C */	b ModuleDestructorsX
/* 80BA9D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA9D8C  7C 08 03 A6 */	mtlr r0
/* 80BA9D90  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA9D94  4E 80 00 20 */	blr 
