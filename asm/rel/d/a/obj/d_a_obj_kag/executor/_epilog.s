lbl_80C2E34C:
/* 80C2E34C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2E350  7C 08 02 A6 */	mflr r0
/* 80C2E354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2E358  4B 63 4D 34 */	b ModuleEpilog
/* 80C2E35C  3C 60 80 C3 */	lis r3, __destroy_global_chain_reference@ha
/* 80C2E360  38 63 11 40 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C2E364  4B 63 4E 2C */	b ModuleDestructorsX
/* 80C2E368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2E36C  7C 08 03 A6 */	mtlr r0
/* 80C2E370  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2E374  4E 80 00 20 */	blr 
