lbl_80CF4540:
/* 80CF4540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF4544  7C 08 02 A6 */	mflr r0
/* 80CF4548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF454C  3C 60 80 CF */	lis r3, data_80CF59C8@ha
/* 80CF4550  38 63 59 C8 */	addi r3, r3, data_80CF59C8@l
/* 80CF4554  4B 56 EB F8 */	b ModuleConstructorsX
/* 80CF4558  4B 56 EB 30 */	b ModuleProlog
/* 80CF455C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF4560  7C 08 03 A6 */	mtlr r0
/* 80CF4564  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF4568  4E 80 00 20 */	blr 
