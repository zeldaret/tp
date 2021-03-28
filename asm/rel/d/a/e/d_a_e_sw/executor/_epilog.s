lbl_807A734C:
/* 807A734C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A7350  7C 08 02 A6 */	mflr r0
/* 807A7354  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A7358  4B AB BD 34 */	b ModuleEpilog
/* 807A735C  3C 60 80 7B */	lis r3, __destroy_global_chain_reference@ha
/* 807A7360  38 63 FD 20 */	addi r3, r3, __destroy_global_chain_reference@l
/* 807A7364  4B AB BE 2C */	b ModuleDestructorsX
/* 807A7368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A736C  7C 08 03 A6 */	mtlr r0
/* 807A7370  38 21 00 10 */	addi r1, r1, 0x10
/* 807A7374  4E 80 00 20 */	blr 
