lbl_80AD566C:
/* 80AD566C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD5670  7C 08 02 A6 */	mflr r0
/* 80AD5674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD5678  4B 78 DA 14 */	b ModuleEpilog
/* 80AD567C  3C 60 80 AD */	lis r3, __destroy_global_chain_reference@ha
/* 80AD5680  38 63 7C 9C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80AD5684  4B 78 DB 0C */	b ModuleDestructorsX
/* 80AD5688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD568C  7C 08 03 A6 */	mtlr r0
/* 80AD5690  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD5694  4E 80 00 20 */	blr 
