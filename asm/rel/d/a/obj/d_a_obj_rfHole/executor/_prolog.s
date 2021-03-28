lbl_80CB8D80:
/* 80CB8D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8D84  7C 08 02 A6 */	mflr r0
/* 80CB8D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8D8C  3C 60 80 CC */	lis r3, data_80CB9A70@ha
/* 80CB8D90  38 63 9A 70 */	addi r3, r3, data_80CB9A70@l
/* 80CB8D94  4B 5A A3 B8 */	b ModuleConstructorsX
/* 80CB8D98  4B 5A A2 F0 */	b ModuleProlog
/* 80CB8D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8DA0  7C 08 03 A6 */	mtlr r0
/* 80CB8DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8DA8  4E 80 00 20 */	blr 
