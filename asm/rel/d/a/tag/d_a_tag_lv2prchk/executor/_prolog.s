lbl_805A4BE0:
/* 805A4BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4BE4  7C 08 02 A6 */	mflr r0
/* 805A4BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4BEC  3C 60 80 5A */	lis r3, data_805A535C@ha
/* 805A4BF0  38 63 53 5C */	addi r3, r3, data_805A535C@l
/* 805A4BF4  4B CB E5 58 */	b ModuleConstructorsX
/* 805A4BF8  4B CB E4 90 */	b ModuleProlog
/* 805A4BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4C00  7C 08 03 A6 */	mtlr r0
/* 805A4C04  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4C08  4E 80 00 20 */	blr 
