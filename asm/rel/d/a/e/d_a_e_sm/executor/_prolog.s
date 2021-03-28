lbl_80792140:
/* 80792140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80792144  7C 08 02 A6 */	mflr r0
/* 80792148  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079214C  3C 60 80 7A */	lis r3, data_807985CC@ha
/* 80792150  38 63 85 CC */	addi r3, r3, data_807985CC@l
/* 80792154  4B AD 0F F8 */	b ModuleConstructorsX
/* 80792158  4B AD 0F 30 */	b ModuleProlog
/* 8079215C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80792160  7C 08 03 A6 */	mtlr r0
/* 80792164  38 21 00 10 */	addi r1, r1, 0x10
/* 80792168  4E 80 00 20 */	blr 
