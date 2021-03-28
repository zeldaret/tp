lbl_80BD0320:
/* 80BD0320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD0324  7C 08 02 A6 */	mflr r0
/* 80BD0328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD032C  3C 60 80 BD */	lis r3, data_80BD30B8@ha
/* 80BD0330  38 63 30 B8 */	addi r3, r3, data_80BD30B8@l
/* 80BD0334  4B 69 2E 18 */	b ModuleConstructorsX
/* 80BD0338  4B 69 2D 50 */	b ModuleProlog
/* 80BD033C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD0340  7C 08 03 A6 */	mtlr r0
/* 80BD0344  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD0348  4E 80 00 20 */	blr 
