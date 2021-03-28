lbl_80C6A520:
/* 80C6A520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A524  7C 08 02 A6 */	mflr r0
/* 80C6A528  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A52C  3C 60 80 C7 */	lis r3, data_80C6B134@ha
/* 80C6A530  38 63 B1 34 */	addi r3, r3, data_80C6B134@l
/* 80C6A534  4B 5F 8C 18 */	b ModuleConstructorsX
/* 80C6A538  4B 5F 8B 50 */	b ModuleProlog
/* 80C6A53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A540  7C 08 03 A6 */	mtlr r0
/* 80C6A544  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A548  4E 80 00 20 */	blr 
