lbl_809F8FA0:
/* 809F8FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F8FA4  7C 08 02 A6 */	mflr r0
/* 809F8FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F8FAC  3C 60 80 A0 */	lis r3, data_80A005EC@ha
/* 809F8FB0  38 63 05 EC */	addi r3, r3, data_80A005EC@l
/* 809F8FB4  4B 86 A1 98 */	b ModuleConstructorsX
/* 809F8FB8  4B 86 A0 D0 */	b ModuleProlog
/* 809F8FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F8FC0  7C 08 03 A6 */	mtlr r0
/* 809F8FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 809F8FC8  4E 80 00 20 */	blr 
