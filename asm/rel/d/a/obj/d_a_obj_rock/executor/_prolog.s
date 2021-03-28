lbl_80CBDC20:
/* 80CBDC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBDC24  7C 08 02 A6 */	mflr r0
/* 80CBDC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBDC2C  3C 60 80 CC */	lis r3, data_80CBE79C@ha
/* 80CBDC30  38 63 E7 9C */	addi r3, r3, data_80CBE79C@l
/* 80CBDC34  4B 5A 55 18 */	b ModuleConstructorsX
/* 80CBDC38  4B 5A 54 50 */	b ModuleProlog
/* 80CBDC3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBDC40  7C 08 03 A6 */	mtlr r0
/* 80CBDC44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBDC48  4E 80 00 20 */	blr 
