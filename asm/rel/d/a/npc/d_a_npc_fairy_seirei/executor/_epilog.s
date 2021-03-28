lbl_8053FEAC:
/* 8053FEAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FEB0  7C 08 02 A6 */	mflr r0
/* 8053FEB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FEB8  4B D2 31 D4 */	b ModuleEpilog
/* 8053FEBC  3C 60 80 54 */	lis r3, __destroy_global_chain_reference@ha
/* 8053FEC0  38 63 1D 80 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8053FEC4  4B D2 32 CC */	b ModuleDestructorsX
/* 8053FEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FECC  7C 08 03 A6 */	mtlr r0
/* 8053FED0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FED4  4E 80 00 20 */	blr 
