lbl_80798A8C:
/* 80798A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80798A90  7C 08 02 A6 */	mflr r0
/* 80798A94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80798A98  4B AC A5 F4 */	b ModuleEpilog
/* 80798A9C  3C 60 80 7A */	lis r3, __destroy_global_chain_reference@ha
/* 80798AA0  38 63 D5 A4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80798AA4  4B AC A6 EC */	b ModuleDestructorsX
/* 80798AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80798AAC  7C 08 03 A6 */	mtlr r0
/* 80798AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80798AB4  4E 80 00 20 */	blr 
