lbl_80860BE0:
/* 80860BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80860BE4  7C 08 02 A6 */	mflr r0
/* 80860BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80860BEC  3C 60 80 86 */	lis r3, data_8086112C@ha
/* 80860BF0  38 63 11 2C */	addi r3, r3, data_8086112C@l
/* 80860BF4  4B A0 25 58 */	b ModuleConstructorsX
/* 80860BF8  4B A0 24 90 */	b ModuleProlog
/* 80860BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80860C00  7C 08 03 A6 */	mtlr r0
/* 80860C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80860C08  4E 80 00 20 */	blr 
