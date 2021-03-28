lbl_8060566C:
/* 8060566C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80605670  7C 08 02 A6 */	mflr r0
/* 80605674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80605678  4B C5 DA 14 */	b ModuleEpilog
/* 8060567C  3C 60 80 61 */	lis r3, __destroy_global_chain_reference@ha
/* 80605680  38 63 FD D4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80605684  4B C5 DB 0C */	b ModuleDestructorsX
/* 80605688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060568C  7C 08 03 A6 */	mtlr r0
/* 80605690  38 21 00 10 */	addi r1, r1, 0x10
/* 80605694  4E 80 00 20 */	blr 
