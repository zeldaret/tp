lbl_80B78420:
/* 80B78420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B78424  7C 08 02 A6 */	mflr r0
/* 80B78428  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7842C  3C 60 80 B9 */	lis r3, data_80B8C444@ha
/* 80B78430  38 63 C4 44 */	addi r3, r3, data_80B8C444@l
/* 80B78434  4B 6E AD 18 */	b ModuleConstructorsX
/* 80B78438  4B 6E AC 50 */	b ModuleProlog
/* 80B7843C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B78440  7C 08 03 A6 */	mtlr r0
/* 80B78444  38 21 00 10 */	addi r1, r1, 0x10
/* 80B78448  4E 80 00 20 */	blr 
