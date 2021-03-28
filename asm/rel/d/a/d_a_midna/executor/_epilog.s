lbl_804BC1CC:
/* 804BC1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BC1D0  7C 08 02 A6 */	mflr r0
/* 804BC1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BC1D8  4B DA 6E B4 */	b ModuleEpilog
/* 804BC1DC  3C 60 80 4C */	lis r3, data_804C64C4@ha
/* 804BC1E0  38 63 64 C4 */	addi r3, r3, data_804C64C4@l
/* 804BC1E4  4B DA 6F AC */	b ModuleDestructorsX
/* 804BC1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BC1EC  7C 08 03 A6 */	mtlr r0
/* 804BC1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804BC1F4  4E 80 00 20 */	blr 
