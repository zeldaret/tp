lbl_80467420:
/* 80467420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80467424  7C 08 02 A6 */	mflr r0
/* 80467428  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046742C  3C 60 80 46 */	lis r3, data_80467EF8@ha
/* 80467430  38 63 7E F8 */	addi r3, r3, data_80467EF8@l
/* 80467434  4B DF BD 18 */	b ModuleConstructorsX
/* 80467438  4B DF BC 50 */	b ModuleProlog
/* 8046743C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80467440  7C 08 03 A6 */	mtlr r0
/* 80467444  38 21 00 10 */	addi r1, r1, 0x10
/* 80467448  4E 80 00 20 */	blr 
