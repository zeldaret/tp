lbl_80CFFF2C:
/* 80CFFF2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFFF30  7C 08 02 A6 */	mflr r0
/* 80CFFF34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFFF38  4B 56 31 54 */	b ModuleEpilog
/* 80CFFF3C  3C 60 80 D0 */	lis r3, data_80D00A90@ha
/* 80CFFF40  38 63 0A 90 */	addi r3, r3, data_80D00A90@l
/* 80CFFF44  4B 56 32 4C */	b ModuleDestructorsX
/* 80CFFF48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFFF4C  7C 08 03 A6 */	mtlr r0
/* 80CFFF50  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFFF54  4E 80 00 20 */	blr 
