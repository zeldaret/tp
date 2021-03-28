lbl_80D58760:
/* 80D58760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D58764  7C 08 02 A6 */	mflr r0
/* 80D58768  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5876C  3C 60 80 D6 */	lis r3, data_80D58858@ha
/* 80D58770  38 63 88 58 */	addi r3, r3, data_80D58858@l
/* 80D58774  4B 50 A9 D8 */	b ModuleConstructorsX
/* 80D58778  4B 50 A9 10 */	b ModuleProlog
/* 80D5877C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D58780  7C 08 03 A6 */	mtlr r0
/* 80D58784  38 21 00 10 */	addi r1, r1, 0x10
/* 80D58788  4E 80 00 20 */	blr 
