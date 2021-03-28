lbl_80BCC7AC:
/* 80BCC7AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCC7B0  7C 08 02 A6 */	mflr r0
/* 80BCC7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCC7B8  4B 69 68 D4 */	b ModuleEpilog
/* 80BCC7BC  3C 60 80 BD */	lis r3, data_80BCCBB0@ha
/* 80BCC7C0  38 63 CB B0 */	addi r3, r3, data_80BCCBB0@l
/* 80BCC7C4  4B 69 69 CC */	b ModuleDestructorsX
/* 80BCC7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCC7CC  7C 08 03 A6 */	mtlr r0
/* 80BCC7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCC7D4  4E 80 00 20 */	blr 
