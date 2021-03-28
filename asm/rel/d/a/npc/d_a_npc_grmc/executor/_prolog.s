lbl_809D7320:
/* 809D7320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D7324  7C 08 02 A6 */	mflr r0
/* 809D7328  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D732C  3C 60 80 9E */	lis r3, data_809D9D5C@ha
/* 809D7330  38 63 9D 5C */	addi r3, r3, data_809D9D5C@l
/* 809D7334  4B 88 BE 18 */	b ModuleConstructorsX
/* 809D7338  4B 88 BD 50 */	b ModuleProlog
/* 809D733C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D7340  7C 08 03 A6 */	mtlr r0
/* 809D7344  38 21 00 10 */	addi r1, r1, 0x10
/* 809D7348  4E 80 00 20 */	blr 
