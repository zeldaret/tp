lbl_80CB9C20:
/* 80CB9C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB9C24  7C 08 02 A6 */	mflr r0
/* 80CB9C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB9C2C  3C 60 80 CC */	lis r3, data_80CBC360@ha
/* 80CB9C30  38 63 C3 60 */	addi r3, r3, data_80CBC360@l
/* 80CB9C34  4B 5A 95 18 */	b ModuleConstructorsX
/* 80CB9C38  4B 5A 94 50 */	b ModuleProlog
/* 80CB9C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB9C40  7C 08 03 A6 */	mtlr r0
/* 80CB9C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9C48  4E 80 00 20 */	blr 
