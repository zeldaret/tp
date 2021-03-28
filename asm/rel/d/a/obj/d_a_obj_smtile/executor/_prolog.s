lbl_80CDD1C0:
/* 80CDD1C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDD1C4  7C 08 02 A6 */	mflr r0
/* 80CDD1C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDD1CC  3C 60 80 CE */	lis r3, data_80CDE348@ha
/* 80CDD1D0  38 63 E3 48 */	addi r3, r3, data_80CDE348@l
/* 80CDD1D4  4B 58 5F 78 */	b ModuleConstructorsX
/* 80CDD1D8  4B 58 5E B0 */	b ModuleProlog
/* 80CDD1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDD1E0  7C 08 03 A6 */	mtlr r0
/* 80CDD1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDD1E8  4E 80 00 20 */	blr 
