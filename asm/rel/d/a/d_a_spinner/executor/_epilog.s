lbl_804D18CC:
/* 804D18CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D18D0  7C 08 02 A6 */	mflr r0
/* 804D18D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D18D8  4B D9 17 B4 */	b ModuleEpilog
/* 804D18DC  3C 60 80 4D */	lis r3, __destroy_global_chain_reference@ha
/* 804D18E0  38 63 4D 84 */	addi r3, r3, __destroy_global_chain_reference@l
/* 804D18E4  4B D9 18 AC */	b ModuleDestructorsX
/* 804D18E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D18EC  7C 08 03 A6 */	mtlr r0
/* 804D18F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D18F4  4E 80 00 20 */	blr 
