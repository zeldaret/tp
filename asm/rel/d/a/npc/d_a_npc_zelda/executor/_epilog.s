lbl_80B7506C:
/* 80B7506C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B75070  7C 08 02 A6 */	mflr r0
/* 80B75074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B75078  4B 6E E0 14 */	b ModuleEpilog
/* 80B7507C  3C 60 80 B7 */	lis r3, __destroy_global_chain_reference@ha
/* 80B75080  38 63 7F BC */	addi r3, r3, __destroy_global_chain_reference@l
/* 80B75084  4B 6E E1 0C */	b ModuleDestructorsX
/* 80B75088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7508C  7C 08 03 A6 */	mtlr r0
/* 80B75090  38 21 00 10 */	addi r1, r1, 0x10
/* 80B75094  4E 80 00 20 */	blr 
