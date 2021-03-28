lbl_80D04DAC:
/* 80D04DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04DB0  7C 08 02 A6 */	mflr r0
/* 80D04DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04DB8  4B 55 E2 D4 */	b ModuleEpilog
/* 80D04DBC  3C 60 80 D0 */	lis r3, __destroy_global_chain_reference@ha
/* 80D04DC0  38 63 60 D4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D04DC4  4B 55 E3 CC */	b ModuleDestructorsX
/* 80D04DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04DCC  7C 08 03 A6 */	mtlr r0
/* 80D04DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04DD4  4E 80 00 20 */	blr 
