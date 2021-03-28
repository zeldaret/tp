lbl_80815DAC:
/* 80815DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80815DB0  7C 08 02 A6 */	mflr r0
/* 80815DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80815DB8  4B A4 D2 D4 */	b ModuleEpilog
/* 80815DBC  3C 60 80 81 */	lis r3, data_80815FB4@ha
/* 80815DC0  38 63 5F B4 */	addi r3, r3, data_80815FB4@l
/* 80815DC4  4B A4 D3 CC */	b ModuleDestructorsX
/* 80815DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80815DCC  7C 08 03 A6 */	mtlr r0
/* 80815DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80815DD4  4E 80 00 20 */	blr 
