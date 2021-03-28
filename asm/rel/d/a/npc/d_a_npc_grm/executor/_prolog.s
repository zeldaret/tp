lbl_809D3F80:
/* 809D3F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D3F84  7C 08 02 A6 */	mflr r0
/* 809D3F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D3F8C  3C 60 80 9D */	lis r3, data_809D6D5C@ha
/* 809D3F90  38 63 6D 5C */	addi r3, r3, data_809D6D5C@l
/* 809D3F94  4B 88 F1 B8 */	b ModuleConstructorsX
/* 809D3F98  4B 88 F0 F0 */	b ModuleProlog
/* 809D3F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D3FA0  7C 08 03 A6 */	mtlr r0
/* 809D3FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 809D3FA8  4E 80 00 20 */	blr 
