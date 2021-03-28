lbl_80D042C0:
/* 80D042C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D042C4  7C 08 02 A6 */	mflr r0
/* 80D042C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D042CC  3C 60 80 D0 */	lis r3, data_80D04C30@ha
/* 80D042D0  38 63 4C 30 */	addi r3, r3, data_80D04C30@l
/* 80D042D4  4B 55 EE 78 */	b ModuleConstructorsX
/* 80D042D8  4B 55 ED B0 */	b ModuleProlog
/* 80D042DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D042E0  7C 08 03 A6 */	mtlr r0
/* 80D042E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D042E8  4E 80 00 20 */	blr 
