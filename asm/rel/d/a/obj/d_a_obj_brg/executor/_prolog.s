lbl_80BBC820:
/* 80BBC820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBC824  7C 08 02 A6 */	mflr r0
/* 80BBC828  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBC82C  3C 60 80 BC */	lis r3, data_80BC2138@ha
/* 80BBC830  38 63 21 38 */	addi r3, r3, data_80BC2138@l
/* 80BBC834  4B 6A 69 18 */	b ModuleConstructorsX
/* 80BBC838  4B 6A 68 50 */	b ModuleProlog
/* 80BBC83C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBC840  7C 08 03 A6 */	mtlr r0
/* 80BBC844  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBC848  4E 80 00 20 */	blr 
