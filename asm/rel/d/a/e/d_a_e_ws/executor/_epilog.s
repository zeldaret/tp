lbl_807E394C:
/* 807E394C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E3950  7C 08 02 A6 */	mflr r0
/* 807E3954  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E3958  4B A7 F7 34 */	b ModuleEpilog
/* 807E395C  3C 60 80 7E */	lis r3, __destroy_global_chain_reference@ha
/* 807E3960  38 63 72 F4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 807E3964  4B A7 F8 2C */	b ModuleDestructorsX
/* 807E3968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E396C  7C 08 03 A6 */	mtlr r0
/* 807E3970  38 21 00 10 */	addi r1, r1, 0x10
/* 807E3974  4E 80 00 20 */	blr 
