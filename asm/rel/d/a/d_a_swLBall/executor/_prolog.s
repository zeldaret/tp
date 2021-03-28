lbl_80D4EA80:
/* 80D4EA80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4EA84  7C 08 02 A6 */	mflr r0
/* 80D4EA88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4EA8C  3C 60 80 D5 */	lis r3, data_80D4F4C8@ha
/* 80D4EA90  38 63 F4 C8 */	addi r3, r3, data_80D4F4C8@l
/* 80D4EA94  4B 51 46 B8 */	b ModuleConstructorsX
/* 80D4EA98  4B 51 45 F0 */	b ModuleProlog
/* 80D4EA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4EAA0  7C 08 03 A6 */	mtlr r0
/* 80D4EAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4EAA8  4E 80 00 20 */	blr 
