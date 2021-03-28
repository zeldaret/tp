lbl_80667C8C:
/* 80667C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80667C90  7C 08 02 A6 */	mflr r0
/* 80667C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80667C98  4B BF B3 F4 */	b ModuleEpilog
/* 80667C9C  3C 60 80 67 */	lis r3, __destroy_global_chain_reference@ha
/* 80667CA0  38 63 ED DC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80667CA4  4B BF B4 EC */	b ModuleDestructorsX
/* 80667CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80667CAC  7C 08 03 A6 */	mtlr r0
/* 80667CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80667CB4  4E 80 00 20 */	blr 
