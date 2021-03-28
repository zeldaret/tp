lbl_805DE34C:
/* 805DE34C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DE350  7C 08 02 A6 */	mflr r0
/* 805DE354  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DE358  4B C8 4D 34 */	b ModuleEpilog
/* 805DE35C  3C 60 80 5F */	lis r3, __destroy_global_chain_reference@ha
/* 805DE360  38 63 D0 54 */	addi r3, r3, __destroy_global_chain_reference@l
/* 805DE364  4B C8 4E 2C */	b ModuleDestructorsX
/* 805DE368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DE36C  7C 08 03 A6 */	mtlr r0
/* 805DE370  38 21 00 10 */	addi r1, r1, 0x10
/* 805DE374  4E 80 00 20 */	blr 
