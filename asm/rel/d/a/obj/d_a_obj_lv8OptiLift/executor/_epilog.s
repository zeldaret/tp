lbl_80C8A24C:
/* 80C8A24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8A250  7C 08 02 A6 */	mflr r0
/* 80C8A254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8A258  4B 5D 8E 34 */	b ModuleEpilog
/* 80C8A25C  3C 60 80 C9 */	lis r3, __destroy_global_chain_reference@ha
/* 80C8A260  38 63 B9 A0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C8A264  4B 5D 8F 2C */	b ModuleDestructorsX
/* 80C8A268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8A26C  7C 08 03 A6 */	mtlr r0
/* 80C8A270  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8A274  4E 80 00 20 */	blr 
