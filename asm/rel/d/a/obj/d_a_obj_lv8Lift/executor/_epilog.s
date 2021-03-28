lbl_80C8866C:
/* 80C8866C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C88670  7C 08 02 A6 */	mflr r0
/* 80C88674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C88678  4B 5D AA 14 */	b ModuleEpilog
/* 80C8867C  3C 60 80 C9 */	lis r3, __destroy_global_chain_reference@ha
/* 80C88680  38 63 9F 54 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C88684  4B 5D AB 0C */	b ModuleDestructorsX
/* 80C88688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8868C  7C 08 03 A6 */	mtlr r0
/* 80C88690  38 21 00 10 */	addi r1, r1, 0x10
/* 80C88694  4E 80 00 20 */	blr 
