lbl_80C5F540:
/* 80C5F540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F544  7C 08 02 A6 */	mflr r0
/* 80C5F548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F54C  3C 60 80 C6 */	lis r3, data_80C5FA28@ha
/* 80C5F550  38 63 FA 28 */	addi r3, r3, data_80C5FA28@l
/* 80C5F554  4B 60 3B F8 */	b ModuleConstructorsX
/* 80C5F558  4B 60 3B 30 */	b ModuleProlog
/* 80C5F55C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F560  7C 08 03 A6 */	mtlr r0
/* 80C5F564  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F568  4E 80 00 20 */	blr 
