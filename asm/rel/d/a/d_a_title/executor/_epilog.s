lbl_80D66A4C:
/* 80D66A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D66A50  7C 08 02 A6 */	mflr r0
/* 80D66A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66A58  4B 4F C6 34 */	b ModuleEpilog
/* 80D66A5C  3C 60 80 D6 */	lis r3, __destroy_global_chain_reference@ha
/* 80D66A60  38 63 7B C8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80D66A64  4B 4F C7 2C */	b ModuleDestructorsX
/* 80D66A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D66A6C  7C 08 03 A6 */	mtlr r0
/* 80D66A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66A74  4E 80 00 20 */	blr 
