lbl_80536D8C:
/* 80536D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80536D90  7C 08 02 A6 */	mflr r0
/* 80536D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80536D98  4B D2 C2 F4 */	b ModuleEpilog
/* 80536D9C  3C 60 80 54 */	lis r3, __destroy_global_chain_reference@ha
/* 80536DA0  38 63 E7 48 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80536DA4  4B D2 C3 EC */	b ModuleDestructorsX
/* 80536DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80536DAC  7C 08 03 A6 */	mtlr r0
/* 80536DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80536DB4  4E 80 00 20 */	blr 
