lbl_80565DA0:
/* 80565DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80565DA4  7C 08 02 A6 */	mflr r0
/* 80565DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80565DAC  3C 60 80 57 */	lis r3, data_805716B4@ha
/* 80565DB0  38 63 16 B4 */	addi r3, r3, data_805716B4@l
/* 80565DB4  4B CF D3 98 */	b ModuleConstructorsX
/* 80565DB8  4B CF D2 D0 */	b ModuleProlog
/* 80565DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80565DC0  7C 08 03 A6 */	mtlr r0
/* 80565DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80565DC8  4E 80 00 20 */	blr 
