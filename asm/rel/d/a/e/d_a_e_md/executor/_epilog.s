lbl_80708DAC:
/* 80708DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80708DB0  7C 08 02 A6 */	mflr r0
/* 80708DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80708DB8  4B B5 A2 D4 */	b ModuleEpilog
/* 80708DBC  3C 60 80 71 */	lis r3, data_8070A4E8@ha
/* 80708DC0  38 63 A4 E8 */	addi r3, r3, data_8070A4E8@l
/* 80708DC4  4B B5 A3 CC */	b ModuleDestructorsX
/* 80708DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80708DCC  7C 08 03 A6 */	mtlr r0
/* 80708DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80708DD4  4E 80 00 20 */	blr 
