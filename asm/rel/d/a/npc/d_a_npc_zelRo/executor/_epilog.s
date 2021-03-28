lbl_80B71EEC:
/* 80B71EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B71EF0  7C 08 02 A6 */	mflr r0
/* 80B71EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B71EF8  4B 6F 11 94 */	b ModuleEpilog
/* 80B71EFC  3C 60 80 B7 */	lis r3, __destroy_global_chain_reference@ha
/* 80B71F00  38 63 4C 50 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B71F04  4B 6F 12 8C */	b ModuleDestructorsX
/* 80B71F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B71F0C  7C 08 03 A6 */	mtlr r0
/* 80B71F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80B71F14  4E 80 00 20 */	blr 
