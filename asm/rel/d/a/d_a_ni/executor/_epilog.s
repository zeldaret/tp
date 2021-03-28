lbl_8094BB6C:
/* 8094BB6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8094BB70  7C 08 02 A6 */	mflr r0
/* 8094BB74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094BB78  4B 91 75 14 */	b ModuleEpilog
/* 8094BB7C  3C 60 80 95 */	lis r3, __destroy_global_chain_reference@ha
/* 8094BB80  38 63 11 B4 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8094BB84  4B 91 76 0C */	b ModuleDestructorsX
/* 8094BB88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8094BB8C  7C 08 03 A6 */	mtlr r0
/* 8094BB90  38 21 00 10 */	addi r1, r1, 0x10
/* 8094BB94  4E 80 00 20 */	blr 
