lbl_80C93F0C:
/* 80C93F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C93F10  7C 08 02 A6 */	mflr r0
/* 80C93F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C93F18  4B 5C F1 74 */	b ModuleEpilog
/* 80C93F1C  3C 60 80 C9 */	lis r3, __destroy_global_chain_reference@ha
/* 80C93F20  38 63 5A A0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C93F24  4B 5C F2 6C */	b ModuleDestructorsX
/* 80C93F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C93F2C  7C 08 03 A6 */	mtlr r0
/* 80C93F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C93F34  4E 80 00 20 */	blr 
