lbl_807A7320:
/* 807A7320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A7324  7C 08 02 A6 */	mflr r0
/* 807A7328  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A732C  3C 60 80 7B */	lis r3, data_807AFD18@ha
/* 807A7330  38 63 FD 18 */	addi r3, r3, data_807AFD18@l
/* 807A7334  4B AB BE 18 */	b ModuleConstructorsX
/* 807A7338  4B AB BD 50 */	b ModuleProlog
/* 807A733C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A7340  7C 08 03 A6 */	mtlr r0
/* 807A7344  38 21 00 10 */	addi r1, r1, 0x10
/* 807A7348  4E 80 00 20 */	blr 
