lbl_80C470A0:
/* 80C470A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C470A4  7C 08 02 A6 */	mflr r0
/* 80C470A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C470AC  3C 60 80 C4 */	lis r3, data_80C47948@ha
/* 80C470B0  38 63 79 48 */	addi r3, r3, data_80C47948@l
/* 80C470B4  4B 61 C0 98 */	b ModuleConstructorsX
/* 80C470B8  4B 61 BF D0 */	b ModuleProlog
/* 80C470BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C470C0  7C 08 03 A6 */	mtlr r0
/* 80C470C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C470C8  4E 80 00 20 */	blr 
