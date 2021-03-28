lbl_80837ACC:
/* 80837ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80837AD0  7C 08 02 A6 */	mflr r0
/* 80837AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80837AD8  4B A2 B5 B4 */	b ModuleEpilog
/* 80837ADC  3C 60 80 83 */	lis r3, data_80837DE0@ha
/* 80837AE0  38 63 7D E0 */	addi r3, r3, data_80837DE0@l
/* 80837AE4  4B A2 B6 AC */	b ModuleDestructorsX
/* 80837AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80837AEC  7C 08 03 A6 */	mtlr r0
/* 80837AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80837AF4  4E 80 00 20 */	blr 
