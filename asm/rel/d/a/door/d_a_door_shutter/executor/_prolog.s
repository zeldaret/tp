lbl_80460AC0:
/* 80460AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460AC4  7C 08 02 A6 */	mflr r0
/* 80460AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460ACC  3C 60 80 46 */	lis r3, data_80466818@ha
/* 80460AD0  38 63 68 18 */	addi r3, r3, data_80466818@l
/* 80460AD4  4B E0 26 78 */	b ModuleConstructorsX
/* 80460AD8  4B E0 25 B0 */	b ModuleProlog
/* 80460ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460AE0  7C 08 03 A6 */	mtlr r0
/* 80460AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80460AE8  4E 80 00 20 */	blr 
