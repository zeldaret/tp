lbl_80D64540:
/* 80D64540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D64544  7C 08 02 A6 */	mflr r0
/* 80D64548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6454C  3C 60 80 D6 */	lis r3, data_80D64D60@ha
/* 80D64550  38 63 4D 60 */	addi r3, r3, data_80D64D60@l
/* 80D64554  4B 4F EB F8 */	b ModuleConstructorsX
/* 80D64558  4B 4F EB 30 */	b ModuleProlog
/* 80D6455C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D64560  7C 08 03 A6 */	mtlr r0
/* 80D64564  38 21 00 10 */	addi r1, r1, 0x10
/* 80D64568  4E 80 00 20 */	blr 
