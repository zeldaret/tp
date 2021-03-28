lbl_80C723CC:
/* 80C723CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C723D0  7C 08 02 A6 */	mflr r0
/* 80C723D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C723D8  4B 5F 0C B4 */	b ModuleEpilog
/* 80C723DC  3C 60 80 C7 */	lis r3, __destroy_global_chain_reference@ha
/* 80C723E0  38 63 31 24 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C723E4  4B 5F 0D AC */	b ModuleDestructorsX
/* 80C723E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C723EC  7C 08 03 A6 */	mtlr r0
/* 80C723F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C723F4  4E 80 00 20 */	blr 
