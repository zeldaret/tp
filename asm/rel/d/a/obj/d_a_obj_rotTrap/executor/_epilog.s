lbl_80CBF7EC:
/* 80CBF7EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBF7F0  7C 08 02 A6 */	mflr r0
/* 80CBF7F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBF7F8  4B 5A 38 94 */	b ModuleEpilog
/* 80CBF7FC  3C 60 80 CC */	lis r3, __destroy_global_chain_reference@ha
/* 80CBF800  38 63 07 FC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CBF804  4B 5A 39 8C */	b ModuleDestructorsX
/* 80CBF808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBF80C  7C 08 03 A6 */	mtlr r0
/* 80CBF810  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBF814  4E 80 00 20 */	blr 
