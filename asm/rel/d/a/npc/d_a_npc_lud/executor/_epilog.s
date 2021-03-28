lbl_80A6AAEC:
/* 80A6AAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6AAF0  7C 08 02 A6 */	mflr r0
/* 80A6AAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6AAF8  4B 7F 85 94 */	b ModuleEpilog
/* 80A6AAFC  3C 60 80 A7 */	lis r3, __destroy_global_chain_reference@ha
/* 80A6AB00  38 63 FD 70 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80A6AB04  4B 7F 86 8C */	b ModuleDestructorsX
/* 80A6AB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6AB0C  7C 08 03 A6 */	mtlr r0
/* 80A6AB10  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6AB14  4E 80 00 20 */	blr 
