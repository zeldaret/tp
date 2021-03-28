lbl_80D0D480:
/* 80D0D480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0D484  7C 08 02 A6 */	mflr r0
/* 80D0D488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0D48C  3C 60 80 D1 */	lis r3, data_80D0E5F0@ha
/* 80D0D490  38 63 E5 F0 */	addi r3, r3, data_80D0E5F0@l
/* 80D0D494  4B 55 5C B8 */	b ModuleConstructorsX
/* 80D0D498  4B 55 5B F0 */	b ModuleProlog
/* 80D0D49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0D4A0  7C 08 03 A6 */	mtlr r0
/* 80D0D4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0D4A8  4E 80 00 20 */	blr 
