lbl_80B5EE20:
/* 80B5EE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5EE24  7C 08 02 A6 */	mflr r0
/* 80B5EE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5EE2C  3C 60 80 B6 */	lis r3, data_80B67C24@ha
/* 80B5EE30  38 63 7C 24 */	addi r3, r3, data_80B67C24@l
/* 80B5EE34  4B 70 43 18 */	b ModuleConstructorsX
/* 80B5EE38  4B 70 42 50 */	b ModuleProlog
/* 80B5EE3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5EE40  7C 08 03 A6 */	mtlr r0
/* 80B5EE44  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5EE48  4E 80 00 20 */	blr 
