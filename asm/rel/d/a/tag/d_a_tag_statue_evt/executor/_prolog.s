lbl_805A6EE0:
/* 805A6EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6EE4  7C 08 02 A6 */	mflr r0
/* 805A6EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6EEC  3C 60 80 5B */	lis r3, data_805A80FC@ha
/* 805A6EF0  38 63 80 FC */	addi r3, r3, data_805A80FC@l
/* 805A6EF4  4B CB C2 58 */	b ModuleConstructorsX
/* 805A6EF8  4B CB C1 90 */	b ModuleProlog
/* 805A6EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6F00  7C 08 03 A6 */	mtlr r0
/* 805A6F04  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6F08  4E 80 00 20 */	blr 
