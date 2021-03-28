lbl_8085BAC0:
/* 8085BAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085BAC4  7C 08 02 A6 */	mflr r0
/* 8085BAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085BACC  3C 60 80 86 */	lis r3, data_8085EEF8@ha
/* 8085BAD0  38 63 EE F8 */	addi r3, r3, data_8085EEF8@l
/* 8085BAD4  4B A0 76 78 */	b ModuleConstructorsX
/* 8085BAD8  4B A0 75 B0 */	b ModuleProlog
/* 8085BADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085BAE0  7C 08 03 A6 */	mtlr r0
/* 8085BAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8085BAE8  4E 80 00 20 */	blr 
