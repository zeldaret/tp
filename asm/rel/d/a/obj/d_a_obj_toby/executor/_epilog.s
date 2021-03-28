lbl_80D136CC:
/* 80D136CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D136D0  7C 08 02 A6 */	mflr r0
/* 80D136D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D136D8  4B 54 F9 B4 */	b ModuleEpilog
/* 80D136DC  3C 60 80 D1 */	lis r3, __destroy_global_chain_reference@ha
/* 80D136E0  38 63 55 DC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D136E4  4B 54 FA AC */	b ModuleDestructorsX
/* 80D136E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D136EC  7C 08 03 A6 */	mtlr r0
/* 80D136F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D136F4  4E 80 00 20 */	blr 
