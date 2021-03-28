lbl_80D0798C:
/* 80D0798C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D07990  7C 08 02 A6 */	mflr r0
/* 80D07994  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D07998  4B 55 B6 F4 */	b ModuleEpilog
/* 80D0799C  3C 60 80 D1 */	lis r3, data_80D085BC@ha
/* 80D079A0  38 63 85 BC */	addi r3, r3, data_80D085BC@l
/* 80D079A4  4B 55 B7 EC */	b ModuleDestructorsX
/* 80D079A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D079AC  7C 08 03 A6 */	mtlr r0
/* 80D079B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D079B4  4E 80 00 20 */	blr 
