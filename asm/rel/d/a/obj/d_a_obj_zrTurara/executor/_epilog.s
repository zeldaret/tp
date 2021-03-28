lbl_80D404AC:
/* 80D404AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D404B0  7C 08 02 A6 */	mflr r0
/* 80D404B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D404B8  4B 52 2B D4 */	b ModuleEpilog
/* 80D404BC  3C 60 80 D4 */	lis r3, __destroy_global_chain_reference@ha
/* 80D404C0  38 63 15 90 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D404C4  4B 52 2C CC */	b ModuleDestructorsX
/* 80D404C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D404CC  7C 08 03 A6 */	mtlr r0
/* 80D404D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D404D4  4E 80 00 20 */	blr 
