lbl_8085F180:
/* 8085F180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085F184  7C 08 02 A6 */	mflr r0
/* 8085F188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085F18C  3C 60 80 86 */	lis r3, data_80860468@ha
/* 8085F190  38 63 04 68 */	addi r3, r3, data_80860468@l
/* 8085F194  4B A0 3F B8 */	b ModuleConstructorsX
/* 8085F198  4B A0 3E F0 */	b ModuleProlog
/* 8085F19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085F1A0  7C 08 03 A6 */	mtlr r0
/* 8085F1A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8085F1A8  4E 80 00 20 */	blr 
