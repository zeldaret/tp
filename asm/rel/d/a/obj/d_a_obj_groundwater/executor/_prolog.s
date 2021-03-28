lbl_80C133C0:
/* 80C133C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C133C4  7C 08 02 A6 */	mflr r0
/* 80C133C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C133CC  3C 60 80 C1 */	lis r3, data_80C149CC@ha
/* 80C133D0  38 63 49 CC */	addi r3, r3, data_80C149CC@l
/* 80C133D4  4B 64 FD 78 */	b ModuleConstructorsX
/* 80C133D8  4B 64 FC B0 */	b ModuleProlog
/* 80C133DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C133E0  7C 08 03 A6 */	mtlr r0
/* 80C133E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C133E8  4E 80 00 20 */	blr 
