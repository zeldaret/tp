lbl_80B7844C:
/* 80B7844C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B78450  7C 08 02 A6 */	mflr r0
/* 80B78454  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B78458  4B 6E AC 34 */	b ModuleEpilog
/* 80B7845C  3C 60 80 B9 */	lis r3, __destroy_global_chain_reference@ha
/* 80B78460  38 63 C4 4C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B78464  4B 6E AD 2C */	b ModuleDestructorsX
/* 80B78468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7846C  7C 08 03 A6 */	mtlr r0
/* 80B78470  38 21 00 10 */	addi r1, r1, 0x10
/* 80B78474  4E 80 00 20 */	blr 
