lbl_80725ACC:
/* 80725ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80725AD0  7C 08 02 A6 */	mflr r0
/* 80725AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80725AD8  4B B3 D5 B4 */	b ModuleEpilog
/* 80725ADC  3C 60 80 73 */	lis r3, __destroy_global_chain_reference@ha
/* 80725AE0  38 63 94 F8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80725AE4  4B B3 D6 AC */	b ModuleDestructorsX
/* 80725AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80725AEC  7C 08 03 A6 */	mtlr r0
/* 80725AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80725AF4  4E 80 00 20 */	blr 
