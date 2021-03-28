lbl_80CECE20:
/* 80CECE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CECE24  7C 08 02 A6 */	mflr r0
/* 80CECE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CECE2C  3C 60 80 CF */	lis r3, data_80CEEF90@ha
/* 80CECE30  38 63 EF 90 */	addi r3, r3, data_80CEEF90@l
/* 80CECE34  4B 57 63 18 */	b ModuleConstructorsX
/* 80CECE38  4B 57 62 50 */	b ModuleProlog
/* 80CECE3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CECE40  7C 08 03 A6 */	mtlr r0
/* 80CECE44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CECE48  4E 80 00 20 */	blr 
