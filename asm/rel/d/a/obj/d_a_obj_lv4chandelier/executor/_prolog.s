lbl_80C632C0:
/* 80C632C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C632C4  7C 08 02 A6 */	mflr r0
/* 80C632C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C632CC  3C 60 80 C6 */	lis r3, data_80C66858@ha
/* 80C632D0  38 63 68 58 */	addi r3, r3, data_80C66858@l
/* 80C632D4  4B 5F FE 78 */	b ModuleConstructorsX
/* 80C632D8  4B 5F FD B0 */	b ModuleProlog
/* 80C632DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C632E0  7C 08 03 A6 */	mtlr r0
/* 80C632E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C632E8  4E 80 00 20 */	blr 
