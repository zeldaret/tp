lbl_80C1DCA0:
/* 80C1DCA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1DCA4  7C 08 02 A6 */	mflr r0
/* 80C1DCA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1DCAC  3C 60 80 C2 */	lis r3, data_80C1EE68@ha
/* 80C1DCB0  38 63 EE 68 */	addi r3, r3, data_80C1EE68@l
/* 80C1DCB4  4B 64 54 98 */	b ModuleConstructorsX
/* 80C1DCB8  4B 64 53 D0 */	b ModuleProlog
/* 80C1DCBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1DCC0  7C 08 03 A6 */	mtlr r0
/* 80C1DCC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1DCC8  4E 80 00 20 */	blr 
