lbl_80A14620:
/* 80A14620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A14624  7C 08 02 A6 */	mflr r0
/* 80A14628  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1462C  3C 60 80 A2 */	lis r3, data_80A1A31C@ha
/* 80A14630  38 63 A3 1C */	addi r3, r3, data_80A1A31C@l
/* 80A14634  4B 84 EB 18 */	b ModuleConstructorsX
/* 80A14638  4B 84 EA 50 */	b ModuleProlog
/* 80A1463C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A14640  7C 08 03 A6 */	mtlr r0
/* 80A14644  38 21 00 10 */	addi r1, r1, 0x10
/* 80A14648  4E 80 00 20 */	blr 
