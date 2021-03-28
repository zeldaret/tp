lbl_80585D8C:
/* 80585D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585D90  7C 08 02 A6 */	mflr r0
/* 80585D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585D98  4B CD D2 F4 */	b ModuleEpilog
/* 80585D9C  3C 60 80 58 */	lis r3, __destroy_global_chain_reference@ha
/* 80585DA0  38 63 7D 78 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80585DA4  4B CD D3 EC */	b ModuleDestructorsX
/* 80585DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585DAC  7C 08 03 A6 */	mtlr r0
/* 80585DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80585DB4  4E 80 00 20 */	blr 
