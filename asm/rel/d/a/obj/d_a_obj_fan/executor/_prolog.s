lbl_80BE4BC0:
/* 80BE4BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE4BC4  7C 08 02 A6 */	mflr r0
/* 80BE4BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE4BCC  3C 60 80 BE */	lis r3, data_80BE5D78@ha
/* 80BE4BD0  38 63 5D 78 */	addi r3, r3, data_80BE5D78@l
/* 80BE4BD4  4B 67 E5 78 */	b ModuleConstructorsX
/* 80BE4BD8  4B 67 E4 B0 */	b ModuleProlog
/* 80BE4BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE4BE0  7C 08 03 A6 */	mtlr r0
/* 80BE4BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE4BE8  4E 80 00 20 */	blr 
