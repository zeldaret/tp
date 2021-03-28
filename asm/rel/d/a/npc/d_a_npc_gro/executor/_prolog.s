lbl_809DA480:
/* 809DA480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DA484  7C 08 02 A6 */	mflr r0
/* 809DA488  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DA48C  3C 60 80 9E */	lis r3, data_809DEF68@ha
/* 809DA490  38 63 EF 68 */	addi r3, r3, data_809DEF68@l
/* 809DA494  4B 88 8C B8 */	b ModuleConstructorsX
/* 809DA498  4B 88 8B F0 */	b ModuleProlog
/* 809DA49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DA4A0  7C 08 03 A6 */	mtlr r0
/* 809DA4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 809DA4A8  4E 80 00 20 */	blr 
