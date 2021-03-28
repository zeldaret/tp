lbl_80945BAC:
/* 80945BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80945BB0  7C 08 02 A6 */	mflr r0
/* 80945BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80945BB8  4B 91 D4 D4 */	b ModuleEpilog
/* 80945BBC  3C 60 80 95 */	lis r3, __destroy_global_chain_reference@ha
/* 80945BC0  38 63 B1 A4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80945BC4  4B 91 D5 CC */	b ModuleDestructorsX
/* 80945BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80945BCC  7C 08 03 A6 */	mtlr r0
/* 80945BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80945BD4  4E 80 00 20 */	blr 
