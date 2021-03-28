lbl_808494EC:
/* 808494EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808494F0  7C 08 02 A6 */	mflr r0
/* 808494F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808494F8  4B A1 9B 94 */	b ModuleEpilog
/* 808494FC  3C 60 80 85 */	lis r3, __destroy_global_chain_reference@ha
/* 80849500  38 63 4A F8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80849504  4B A1 9C 8C */	b ModuleDestructorsX
/* 80849508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084950C  7C 08 03 A6 */	mtlr r0
/* 80849510  38 21 00 10 */	addi r1, r1, 0x10
/* 80849514  4E 80 00 20 */	blr 
