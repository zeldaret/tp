lbl_80B0C70C:
/* 80B0C70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0C710  7C 08 02 A6 */	mflr r0
/* 80B0C714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0C718  4B 75 69 74 */	b ModuleEpilog
/* 80B0C71C  3C 60 80 B1 */	lis r3, __destroy_global_chain_reference@ha
/* 80B0C720  38 63 08 A8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B0C724  4B 75 6A 6C */	b ModuleDestructorsX
/* 80B0C728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0C72C  7C 08 03 A6 */	mtlr r0
/* 80B0C730  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0C734  4E 80 00 20 */	blr 
