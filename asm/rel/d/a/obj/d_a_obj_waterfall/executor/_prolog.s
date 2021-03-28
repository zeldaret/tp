lbl_80D2EBA0:
/* 80D2EBA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2EBA4  7C 08 02 A6 */	mflr r0
/* 80D2EBA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2EBAC  3C 60 80 D3 */	lis r3, data_80D2FD50@ha
/* 80D2EBB0  38 63 FD 50 */	addi r3, r3, data_80D2FD50@l
/* 80D2EBB4  4B 53 45 98 */	b ModuleConstructorsX
/* 80D2EBB8  4B 53 44 D0 */	b ModuleProlog
/* 80D2EBBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2EBC0  7C 08 03 A6 */	mtlr r0
/* 80D2EBC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2EBC8  4E 80 00 20 */	blr 
