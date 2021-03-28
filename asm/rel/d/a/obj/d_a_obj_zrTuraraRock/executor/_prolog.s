lbl_80D417A0:
/* 80D417A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D417A4  7C 08 02 A6 */	mflr r0
/* 80D417A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D417AC  3C 60 80 D4 */	lis r3, data_80D423AC@ha
/* 80D417B0  38 63 23 AC */	addi r3, r3, data_80D423AC@l
/* 80D417B4  4B 52 19 98 */	b ModuleConstructorsX
/* 80D417B8  4B 52 18 D0 */	b ModuleProlog
/* 80D417BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D417C0  7C 08 03 A6 */	mtlr r0
/* 80D417C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D417C8  4E 80 00 20 */	blr 
