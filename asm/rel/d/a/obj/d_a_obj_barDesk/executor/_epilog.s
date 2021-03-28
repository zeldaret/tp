lbl_80BA90CC:
/* 80BA90CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA90D0  7C 08 02 A6 */	mflr r0
/* 80BA90D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA90D8  4B 6B 9F B4 */	b ModuleEpilog
/* 80BA90DC  3C 60 80 BB */	lis r3, __destroy_global_chain_reference@ha
/* 80BA90E0  38 63 9B 64 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BA90E4  4B 6B A0 AC */	b ModuleDestructorsX
/* 80BA90E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA90EC  7C 08 03 A6 */	mtlr r0
/* 80BA90F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA90F4  4E 80 00 20 */	blr 
