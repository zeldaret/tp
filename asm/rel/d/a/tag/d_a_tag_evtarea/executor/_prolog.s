lbl_8048C480:
/* 8048C480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C484  7C 08 02 A6 */	mflr r0
/* 8048C488  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C48C  3C 60 80 49 */	lis r3, data_8048CDC8@ha
/* 8048C490  38 63 CD C8 */	addi r3, r3, data_8048CDC8@l
/* 8048C494  4B DD 6C B8 */	b ModuleConstructorsX
/* 8048C498  4B DD 6B F0 */	b ModuleProlog
/* 8048C49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C4A0  7C 08 03 A6 */	mtlr r0
/* 8048C4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C4A8  4E 80 00 20 */	blr 
