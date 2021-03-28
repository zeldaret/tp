lbl_80500EA0:
/* 80500EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80500EA4  7C 08 02 A6 */	mflr r0
/* 80500EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500EAC  3C 60 80 50 */	lis r3, data_805046C8@ha
/* 80500EB0  38 63 46 C8 */	addi r3, r3, data_805046C8@l
/* 80500EB4  4B D6 22 98 */	b ModuleConstructorsX
/* 80500EB8  4B D6 21 D0 */	b ModuleProlog
/* 80500EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80500EC0  7C 08 03 A6 */	mtlr r0
/* 80500EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80500EC8  4E 80 00 20 */	blr 
