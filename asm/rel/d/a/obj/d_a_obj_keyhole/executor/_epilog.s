lbl_80C4118C:
/* 80C4118C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C41190  7C 08 02 A6 */	mflr r0
/* 80C41194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C41198  4B 62 1E F4 */	b ModuleEpilog
/* 80C4119C  3C 60 80 C4 */	lis r3, __destroy_global_chain_reference@ha
/* 80C411A0  38 63 39 D8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C411A4  4B 62 1F EC */	b ModuleDestructorsX
/* 80C411A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C411AC  7C 08 03 A6 */	mtlr r0
/* 80C411B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C411B4  4E 80 00 20 */	blr 
