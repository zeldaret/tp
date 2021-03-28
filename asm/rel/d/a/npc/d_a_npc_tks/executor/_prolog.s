lbl_80B14540:
/* 80B14540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B14544  7C 08 02 A6 */	mflr r0
/* 80B14548  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1454C  3C 60 80 B2 */	lis r3, data_80B1DD44@ha
/* 80B14550  38 63 DD 44 */	addi r3, r3, data_80B1DD44@l
/* 80B14554  4B 74 EB F8 */	b ModuleConstructorsX
/* 80B14558  4B 74 EB 30 */	b ModuleProlog
/* 80B1455C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B14560  7C 08 03 A6 */	mtlr r0
/* 80B14564  38 21 00 10 */	addi r1, r1, 0x10
/* 80B14568  4E 80 00 20 */	blr 
