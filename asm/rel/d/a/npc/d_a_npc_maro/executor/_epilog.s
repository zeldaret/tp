lbl_8055B4CC:
/* 8055B4CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B4D0  7C 08 02 A6 */	mflr r0
/* 8055B4D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B4D8  4B D0 7B B4 */	b ModuleEpilog
/* 8055B4DC  3C 60 80 56 */	lis r3, __destroy_global_chain_reference@ha
/* 8055B4E0  38 63 4B A0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8055B4E4  4B D0 7C AC */	b ModuleDestructorsX
/* 8055B4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B4EC  7C 08 03 A6 */	mtlr r0
/* 8055B4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B4F4  4E 80 00 20 */	blr 
