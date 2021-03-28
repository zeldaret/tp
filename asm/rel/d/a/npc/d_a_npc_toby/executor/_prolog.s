lbl_80B1E560:
/* 80B1E560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1E564  7C 08 02 A6 */	mflr r0
/* 80B1E568  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1E56C  3C 60 80 B2 */	lis r3, data_80B249D0@ha
/* 80B1E570  38 63 49 D0 */	addi r3, r3, data_80B249D0@l
/* 80B1E574  4B 74 4B D8 */	b ModuleConstructorsX
/* 80B1E578  4B 74 4B 10 */	b ModuleProlog
/* 80B1E57C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1E580  7C 08 03 A6 */	mtlr r0
/* 80B1E584  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1E588  4E 80 00 20 */	blr 
