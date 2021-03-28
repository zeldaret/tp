lbl_80CBF7C0:
/* 80CBF7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBF7C4  7C 08 02 A6 */	mflr r0
/* 80CBF7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBF7CC  3C 60 80 CC */	lis r3, data_80CC07F4@ha
/* 80CBF7D0  38 63 07 F4 */	addi r3, r3, data_80CC07F4@l
/* 80CBF7D4  4B 5A 39 78 */	b ModuleConstructorsX
/* 80CBF7D8  4B 5A 38 B0 */	b ModuleProlog
/* 80CBF7DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBF7E0  7C 08 03 A6 */	mtlr r0
/* 80CBF7E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBF7E8  4E 80 00 20 */	blr 
