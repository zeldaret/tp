lbl_809D734C:
/* 809D734C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D7350  7C 08 02 A6 */	mflr r0
/* 809D7354  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D7358  4B 88 BD 34 */	b ModuleEpilog
/* 809D735C  3C 60 80 9E */	lis r3, __destroy_global_chain_reference@ha
/* 809D7360  38 63 9D 64 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809D7364  4B 88 BE 2C */	b ModuleDestructorsX
/* 809D7368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D736C  7C 08 03 A6 */	mtlr r0
/* 809D7370  38 21 00 10 */	addi r1, r1, 0x10
/* 809D7374  4E 80 00 20 */	blr 
