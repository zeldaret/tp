lbl_8078A140:
/* 8078A140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078A144  7C 08 02 A6 */	mflr r0
/* 8078A148  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078A14C  3C 60 80 79 */	lis r3, data_8078DD90@ha
/* 8078A150  38 63 DD 90 */	addi r3, r3, data_8078DD90@l
/* 8078A154  4B AD 8F F8 */	b ModuleConstructorsX
/* 8078A158  4B AD 8F 30 */	b ModuleProlog
/* 8078A15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078A160  7C 08 03 A6 */	mtlr r0
/* 8078A164  38 21 00 10 */	addi r1, r1, 0x10
/* 8078A168  4E 80 00 20 */	blr 
