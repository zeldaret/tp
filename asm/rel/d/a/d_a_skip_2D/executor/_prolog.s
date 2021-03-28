lbl_80D4D400:
/* 80D4D400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D404  7C 08 02 A6 */	mflr r0
/* 80D4D408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D40C  3C 60 80 D5 */	lis r3, data_80D4D6D4@ha
/* 80D4D410  38 63 D6 D4 */	addi r3, r3, data_80D4D6D4@l
/* 80D4D414  4B 51 5D 38 */	b ModuleConstructorsX
/* 80D4D418  4B 51 5C 70 */	b ModuleProlog
/* 80D4D41C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D420  7C 08 03 A6 */	mtlr r0
/* 80D4D424  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D428  4E 80 00 20 */	blr 
