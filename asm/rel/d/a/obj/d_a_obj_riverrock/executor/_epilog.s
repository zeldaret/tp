lbl_80CBC60C:
/* 80CBC60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC610  7C 08 02 A6 */	mflr r0
/* 80CBC614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC618  4B 5A 6A 74 */	b ModuleEpilog
/* 80CBC61C  3C 60 80 CC */	lis r3, __destroy_global_chain_reference@ha
/* 80CBC620  38 63 DA 50 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80CBC624  4B 5A 6B 6C */	b ModuleDestructorsX
/* 80CBC628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC62C  7C 08 03 A6 */	mtlr r0
/* 80CBC630  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC634  4E 80 00 20 */	blr 
