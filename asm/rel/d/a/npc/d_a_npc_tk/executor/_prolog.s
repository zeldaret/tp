lbl_80B01320:
/* 80B01320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B01324  7C 08 02 A6 */	mflr r0
/* 80B01328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0132C  3C 60 80 B1 */	lis r3, data_80B0C1B0@ha
/* 80B01330  38 63 C1 B0 */	addi r3, r3, data_80B0C1B0@l
/* 80B01334  4B 76 1E 18 */	b ModuleConstructorsX
/* 80B01338  4B 76 1D 50 */	b ModuleProlog
/* 80B0133C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B01340  7C 08 03 A6 */	mtlr r0
/* 80B01344  38 21 00 10 */	addi r1, r1, 0x10
/* 80B01348  4E 80 00 20 */	blr 
