lbl_80C55C4C:
/* 80C55C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C55C50  7C 08 02 A6 */	mflr r0
/* 80C55C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C55C58  4B 60 D4 34 */	b ModuleEpilog
/* 80C55C5C  3C 60 80 C5 */	lis r3, __destroy_global_chain_reference@ha
/* 80C55C60  38 63 6A 44 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C55C64  4B 60 D5 2C */	b ModuleDestructorsX
/* 80C55C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C55C6C  7C 08 03 A6 */	mtlr r0
/* 80C55C70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C55C74  4E 80 00 20 */	blr 
