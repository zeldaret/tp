lbl_80CA850C:
/* 80CA850C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8510  7C 08 02 A6 */	mflr r0
/* 80CA8514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8518  4B 5B AB 74 */	b ModuleEpilog
/* 80CA851C  3C 60 80 CB */	lis r3, __destroy_global_chain_reference@ha
/* 80CA8520  38 63 9B 6C */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CA8524  4B 5B AC 6C */	b ModuleDestructorsX
/* 80CA8528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA852C  7C 08 03 A6 */	mtlr r0
/* 80CA8530  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8534  4E 80 00 20 */	blr 
