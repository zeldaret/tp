lbl_80D2FEAC:
/* 80D2FEAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2FEB0  7C 08 02 A6 */	mflr r0
/* 80D2FEB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2FEB8  4B 53 31 D4 */	b ModuleEpilog
/* 80D2FEBC  3C 60 80 D3 */	lis r3, data_80D31920@ha
/* 80D2FEC0  38 63 19 20 */	addi r3, r3, data_80D31920@l
/* 80D2FEC4  4B 53 32 CC */	b ModuleDestructorsX
/* 80D2FEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2FECC  7C 08 03 A6 */	mtlr r0
/* 80D2FED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2FED4  4E 80 00 20 */	blr 
