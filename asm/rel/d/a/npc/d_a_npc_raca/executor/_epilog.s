lbl_80AB5BEC:
/* 80AB5BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB5BF0  7C 08 02 A6 */	mflr r0
/* 80AB5BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB5BF8  4B 7A D4 94 */	b ModuleEpilog
/* 80AB5BFC  3C 60 80 AC */	lis r3, __destroy_global_chain_reference@ha
/* 80AB5C00  38 63 8E BC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80AB5C04  4B 7A D5 8C */	b ModuleDestructorsX
/* 80AB5C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB5C0C  7C 08 03 A6 */	mtlr r0
/* 80AB5C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB5C14  4E 80 00 20 */	blr 
