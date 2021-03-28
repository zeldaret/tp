lbl_80B9FA2C:
/* 80B9FA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9FA30  7C 08 02 A6 */	mflr r0
/* 80B9FA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9FA38  4B 6C 36 54 */	b ModuleEpilog
/* 80B9FA3C  3C 60 80 BA */	lis r3, __destroy_global_chain_reference@ha
/* 80B9FA40  38 63 11 48 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B9FA44  4B 6C 37 4C */	b ModuleDestructorsX
/* 80B9FA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9FA4C  7C 08 03 A6 */	mtlr r0
/* 80B9FA50  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9FA54  4E 80 00 20 */	blr 
