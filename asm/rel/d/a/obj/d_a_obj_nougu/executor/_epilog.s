lbl_80CA3B4C:
/* 80CA3B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA3B50  7C 08 02 A6 */	mflr r0
/* 80CA3B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA3B58  4B 5B F5 34 */	b ModuleEpilog
/* 80CA3B5C  3C 60 80 CA */	lis r3, __destroy_global_chain_reference@ha
/* 80CA3B60  38 63 49 AC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CA3B64  4B 5B F6 2C */	b ModuleDestructorsX
/* 80CA3B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA3B6C  7C 08 03 A6 */	mtlr r0
/* 80CA3B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3B74  4E 80 00 20 */	blr 
