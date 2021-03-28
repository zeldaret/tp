lbl_807060AC:
/* 807060AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807060B0  7C 08 02 A6 */	mflr r0
/* 807060B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807060B8  4B B5 CF D4 */	b ModuleEpilog
/* 807060BC  3C 60 80 71 */	lis r3, __destroy_global_chain_reference@ha
/* 807060C0  38 63 8A 04 */	addi r3, r3, __destroy_global_chain_reference@l
/* 807060C4  4B B5 D0 CC */	b ModuleDestructorsX
/* 807060C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807060CC  7C 08 03 A6 */	mtlr r0
/* 807060D0  38 21 00 10 */	addi r1, r1, 0x10
/* 807060D4  4E 80 00 20 */	blr 
