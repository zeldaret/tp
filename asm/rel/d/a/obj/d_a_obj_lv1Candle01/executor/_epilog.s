lbl_80C56BEC:
/* 80C56BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C56BF0  7C 08 02 A6 */	mflr r0
/* 80C56BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C56BF8  4B 60 C4 94 */	b ModuleEpilog
/* 80C56BFC  3C 60 80 C5 */	lis r3, __destroy_global_chain_reference@ha
/* 80C56C00  38 63 78 50 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C56C04  4B 60 C5 8C */	b ModuleDestructorsX
/* 80C56C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C56C0C  7C 08 03 A6 */	mtlr r0
/* 80C56C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C56C14  4E 80 00 20 */	blr 
