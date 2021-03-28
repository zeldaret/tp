lbl_80B9CACC:
/* 80B9CACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9CAD0  7C 08 02 A6 */	mflr r0
/* 80B9CAD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9CAD8  4B 6C 65 B4 */	b ModuleEpilog
/* 80B9CADC  3C 60 80 BA */	lis r3, __destroy_global_chain_reference@ha
/* 80B9CAE0  38 63 E8 E8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B9CAE4  4B 6C 66 AC */	b ModuleDestructorsX
/* 80B9CAE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9CAEC  7C 08 03 A6 */	mtlr r0
/* 80B9CAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9CAF4  4E 80 00 20 */	blr 
