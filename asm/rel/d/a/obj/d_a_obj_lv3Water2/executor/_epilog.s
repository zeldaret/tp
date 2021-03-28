lbl_80C5A34C:
/* 80C5A34C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5A350  7C 08 02 A6 */	mflr r0
/* 80C5A354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5A358  4B 60 8D 34 */	b ModuleEpilog
/* 80C5A35C  3C 60 80 C6 */	lis r3, __destroy_global_chain_reference@ha
/* 80C5A360  38 63 B3 58 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C5A364  4B 60 8E 2C */	b ModuleDestructorsX
/* 80C5A368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5A36C  7C 08 03 A6 */	mtlr r0
/* 80C5A370  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5A374  4E 80 00 20 */	blr 
