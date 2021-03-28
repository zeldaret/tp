lbl_8071406C:
/* 8071406C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80714070  7C 08 02 A6 */	mflr r0
/* 80714074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80714078  4B B4 F0 14 */	b ModuleEpilog
/* 8071407C  3C 60 80 72 */	lis r3, __destroy_global_chain_reference@ha
/* 80714080  38 63 C5 38 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80714084  4B B4 F1 0C */	b ModuleDestructorsX
/* 80714088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071408C  7C 08 03 A6 */	mtlr r0
/* 80714090  38 21 00 10 */	addi r1, r1, 0x10
/* 80714094  4E 80 00 20 */	blr 
