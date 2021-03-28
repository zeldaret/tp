lbl_80725AA0:
/* 80725AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80725AA4  7C 08 02 A6 */	mflr r0
/* 80725AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80725AAC  3C 60 80 73 */	lis r3, data_807294F0@ha
/* 80725AB0  38 63 94 F0 */	addi r3, r3, data_807294F0@l
/* 80725AB4  4B B3 D6 98 */	b ModuleConstructorsX
/* 80725AB8  4B B3 D5 D0 */	b ModuleProlog
/* 80725ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80725AC0  7C 08 03 A6 */	mtlr r0
/* 80725AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80725AC8  4E 80 00 20 */	blr 
