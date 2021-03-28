lbl_80D1B920:
/* 80D1B920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1B924  7C 08 02 A6 */	mflr r0
/* 80D1B928  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1B92C  3C 60 80 D2 */	lis r3, data_80D1C34C@ha
/* 80D1B930  38 63 C3 4C */	addi r3, r3, data_80D1C34C@l
/* 80D1B934  4B 54 78 18 */	b ModuleConstructorsX
/* 80D1B938  4B 54 77 50 */	b ModuleProlog
/* 80D1B93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1B940  7C 08 03 A6 */	mtlr r0
/* 80D1B944  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1B948  4E 80 00 20 */	blr 
