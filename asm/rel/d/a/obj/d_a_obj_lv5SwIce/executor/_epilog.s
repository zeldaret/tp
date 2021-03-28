lbl_80C6C88C:
/* 80C6C88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C890  7C 08 02 A6 */	mflr r0
/* 80C6C894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C898  4B 5F 67 F4 */	b ModuleEpilog
/* 80C6C89C  3C 60 80 C7 */	lis r3, __destroy_global_chain_reference@ha
/* 80C6C8A0  38 63 D4 FC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C6C8A4  4B 5F 68 EC */	b ModuleDestructorsX
/* 80C6C8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C8AC  7C 08 03 A6 */	mtlr r0
/* 80C6C8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C8B4  4E 80 00 20 */	blr 
