lbl_806EA520:
/* 806EA520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EA524  7C 08 02 A6 */	mflr r0
/* 806EA528  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EA52C  3C 60 80 6F */	lis r3, data_806F084C@ha
/* 806EA530  38 63 08 4C */	addi r3, r3, data_806F084C@l
/* 806EA534  4B B7 8C 18 */	b ModuleConstructorsX
/* 806EA538  4B B7 8B 50 */	b ModuleProlog
/* 806EA53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806EA540  7C 08 03 A6 */	mtlr r0
/* 806EA544  38 21 00 10 */	addi r1, r1, 0x10
/* 806EA548  4E 80 00 20 */	blr 
