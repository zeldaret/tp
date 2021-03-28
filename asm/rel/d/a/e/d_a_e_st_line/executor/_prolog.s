lbl_807A6EE0:
/* 807A6EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A6EE4  7C 08 02 A6 */	mflr r0
/* 807A6EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A6EEC  3C 60 80 7A */	lis r3, data_807A7224@ha
/* 807A6EF0  38 63 72 24 */	addi r3, r3, data_807A7224@l
/* 807A6EF4  4B AB C2 58 */	b ModuleConstructorsX
/* 807A6EF8  4B AB C1 90 */	b ModuleProlog
/* 807A6EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A6F00  7C 08 03 A6 */	mtlr r0
/* 807A6F04  38 21 00 10 */	addi r1, r1, 0x10
/* 807A6F08  4E 80 00 20 */	blr 
