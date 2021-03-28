lbl_804D5DAC:
/* 804D5DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5DB0  7C 08 02 A6 */	mflr r0
/* 804D5DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5DB8  4B D8 D2 D4 */	b ModuleEpilog
/* 804D5DBC  3C 60 80 4D */	lis r3, data_804D6AC4@ha
/* 804D5DC0  38 63 6A C4 */	addi r3, r3, data_804D6AC4@l
/* 804D5DC4  4B D8 D3 CC */	b ModuleDestructorsX
/* 804D5DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5DCC  7C 08 03 A6 */	mtlr r0
/* 804D5DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5DD4  4E 80 00 20 */	blr 
