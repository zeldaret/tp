lbl_804CE6C0:
/* 804CE6C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CE6C4  7C 08 02 A6 */	mflr r0
/* 804CE6C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CE6CC  3C 60 80 4D */	lis r3, data_804D15E8@ha
/* 804CE6D0  38 63 15 E8 */	addi r3, r3, data_804D15E8@l
/* 804CE6D4  4B D9 4A 78 */	b ModuleConstructorsX
/* 804CE6D8  4B D9 49 B0 */	b ModuleProlog
/* 804CE6DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CE6E0  7C 08 03 A6 */	mtlr r0
/* 804CE6E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804CE6E8  4E 80 00 20 */	blr 
