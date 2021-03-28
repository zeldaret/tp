lbl_80BBA980:
/* 80BBA980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA984  7C 08 02 A6 */	mflr r0
/* 80BBA988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA98C  3C 60 80 BC */	lis r3, data_80BBAE7C@ha
/* 80BBA990  38 63 AE 7C */	addi r3, r3, data_80BBAE7C@l
/* 80BBA994  4B 6A 87 B8 */	b ModuleConstructorsX
/* 80BBA998  4B 6A 86 F0 */	b ModuleProlog
/* 80BBA99C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA9A0  7C 08 03 A6 */	mtlr r0
/* 80BBA9A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA9A8  4E 80 00 20 */	blr 
