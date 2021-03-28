lbl_80AD8120:
/* 80AD8120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD8124  7C 08 02 A6 */	mflr r0
/* 80AD8128  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD812C  3C 60 80 AE */	lis r3, data_80AE1FC8@ha
/* 80AD8130  38 63 1F C8 */	addi r3, r3, data_80AE1FC8@l
/* 80AD8134  4B 78 B0 18 */	b ModuleConstructorsX
/* 80AD8138  4B 78 AF 50 */	b ModuleProlog
/* 80AD813C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD8140  7C 08 03 A6 */	mtlr r0
/* 80AD8144  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD8148  4E 80 00 20 */	blr 
