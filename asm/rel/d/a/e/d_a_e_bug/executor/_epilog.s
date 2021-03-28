lbl_80694ACC:
/* 80694ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80694AD0  7C 08 02 A6 */	mflr r0
/* 80694AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80694AD8  4B BC E5 B4 */	b ModuleEpilog
/* 80694ADC  3C 60 80 69 */	lis r3, __destroy_global_chain_reference@ha
/* 80694AE0  38 63 7C 94 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80694AE4  4B BC E6 AC */	b ModuleDestructorsX
/* 80694AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80694AEC  7C 08 03 A6 */	mtlr r0
/* 80694AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80694AF4  4E 80 00 20 */	blr 
