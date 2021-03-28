lbl_804DFAE0:
/* 804DFAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFAE4  7C 08 02 A6 */	mflr r0
/* 804DFAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFAEC  3C 60 80 4E */	lis r3, data_804E19C0@ha
/* 804DFAF0  38 63 19 C0 */	addi r3, r3, data_804E19C0@l
/* 804DFAF4  4B D8 36 58 */	b ModuleConstructorsX
/* 804DFAF8  4B D8 35 90 */	b ModuleProlog
/* 804DFAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFB00  7C 08 03 A6 */	mtlr r0
/* 804DFB04  38 21 00 10 */	addi r1, r1, 0x10
/* 804DFB08  4E 80 00 20 */	blr 
