lbl_80C5EA80:
/* 80C5EA80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5EA84  7C 08 02 A6 */	mflr r0
/* 80C5EA88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5EA8C  3C 60 80 C6 */	lis r3, data_80C5F3E0@ha
/* 80C5EA90  38 63 F3 E0 */	addi r3, r3, data_80C5F3E0@l
/* 80C5EA94  4B 60 46 B8 */	b ModuleConstructorsX
/* 80C5EA98  4B 60 45 F0 */	b ModuleProlog
/* 80C5EA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5EAA0  7C 08 03 A6 */	mtlr r0
/* 80C5EAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5EAA8  4E 80 00 20 */	blr 
