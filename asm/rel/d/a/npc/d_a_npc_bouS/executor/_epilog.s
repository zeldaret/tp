lbl_8097348C:
/* 8097348C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80973490  7C 08 02 A6 */	mflr r0
/* 80973494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80973498  4B 8E FB F4 */	b ModuleEpilog
/* 8097349C  3C 60 80 98 */	lis r3, __destroy_global_chain_reference@ha
/* 809734A0  38 63 84 04 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809734A4  4B 8E FC EC */	b ModuleDestructorsX
/* 809734A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809734AC  7C 08 03 A6 */	mtlr r0
/* 809734B0  38 21 00 10 */	addi r1, r1, 0x10
/* 809734B4  4E 80 00 20 */	blr 
