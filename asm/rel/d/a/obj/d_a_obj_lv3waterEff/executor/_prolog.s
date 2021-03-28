lbl_80C5C480:
/* 80C5C480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C484  7C 08 02 A6 */	mflr r0
/* 80C5C488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C48C  3C 60 80 C6 */	lis r3, data_80C5C870@ha
/* 80C5C490  38 63 C8 70 */	addi r3, r3, data_80C5C870@l
/* 80C5C494  4B 60 6C B8 */	b ModuleConstructorsX
/* 80C5C498  4B 60 6B F0 */	b ModuleProlog
/* 80C5C49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C4A0  7C 08 03 A6 */	mtlr r0
/* 80C5C4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C4A8  4E 80 00 20 */	blr 
