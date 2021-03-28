lbl_80D1D500:
/* 80D1D500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1D504  7C 08 02 A6 */	mflr r0
/* 80D1D508  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1D50C  3C 60 80 D2 */	lis r3, data_80D1EE24@ha
/* 80D1D510  38 63 EE 24 */	addi r3, r3, data_80D1EE24@l
/* 80D1D514  4B 54 5C 38 */	b ModuleConstructorsX
/* 80D1D518  4B 54 5B 70 */	b ModuleProlog
/* 80D1D51C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1D520  7C 08 03 A6 */	mtlr r0
/* 80D1D524  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1D528  4E 80 00 20 */	blr 
