lbl_8085F1AC:
/* 8085F1AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085F1B0  7C 08 02 A6 */	mflr r0
/* 8085F1B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085F1B8  4B A0 3E D4 */	b ModuleEpilog
/* 8085F1BC  3C 60 80 86 */	lis r3, data_8086046C@ha
/* 8085F1C0  38 63 04 6C */	addi r3, r3, data_8086046C@l
/* 8085F1C4  4B A0 3F CC */	b ModuleDestructorsX
/* 8085F1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085F1CC  7C 08 03 A6 */	mtlr r0
/* 8085F1D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8085F1D4  4E 80 00 20 */	blr 
