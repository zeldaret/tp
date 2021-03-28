lbl_80D60820:
/* 80D60820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D60824  7C 08 02 A6 */	mflr r0
/* 80D60828  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6082C  3C 60 80 D6 */	lis r3, data_80D60A78@ha
/* 80D60830  38 63 0A 78 */	addi r3, r3, data_80D60A78@l
/* 80D60834  4B 50 29 18 */	b ModuleConstructorsX
/* 80D60838  4B 50 28 50 */	b ModuleProlog
/* 80D6083C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D60840  7C 08 03 A6 */	mtlr r0
/* 80D60844  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60848  4E 80 00 20 */	blr 
