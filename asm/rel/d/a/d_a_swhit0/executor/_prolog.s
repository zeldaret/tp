lbl_80485F80:
/* 80485F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485F84  7C 08 02 A6 */	mflr r0
/* 80485F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485F8C  3C 60 80 48 */	lis r3, data_80487368@ha
/* 80485F90  38 63 73 68 */	addi r3, r3, data_80487368@l
/* 80485F94  4B DD D1 B8 */	b ModuleConstructorsX
/* 80485F98  4B DD D0 F0 */	b ModuleProlog
/* 80485F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485FA0  7C 08 03 A6 */	mtlr r0
/* 80485FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80485FA8  4E 80 00 20 */	blr 
