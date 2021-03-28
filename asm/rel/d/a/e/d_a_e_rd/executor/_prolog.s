lbl_80504980:
/* 80504980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504984  7C 08 02 A6 */	mflr r0
/* 80504988  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050498C  3C 60 80 52 */	lis r3, data_80518570@ha
/* 80504990  38 63 85 70 */	addi r3, r3, data_80518570@l
/* 80504994  4B D5 E7 B8 */	b ModuleConstructorsX
/* 80504998  4B D5 E6 F0 */	b ModuleProlog
/* 8050499C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805049A0  7C 08 03 A6 */	mtlr r0
/* 805049A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805049A8  4E 80 00 20 */	blr 
