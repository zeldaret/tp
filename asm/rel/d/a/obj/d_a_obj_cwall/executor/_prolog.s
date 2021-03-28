lbl_80BD6960:
/* 80BD6960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6964  7C 08 02 A6 */	mflr r0
/* 80BD6968  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD696C  3C 60 80 BE */	lis r3, data_80BD9F90@ha
/* 80BD6970  38 63 9F 90 */	addi r3, r3, data_80BD9F90@l
/* 80BD6974  4B 68 C7 D8 */	b ModuleConstructorsX
/* 80BD6978  4B 68 C7 10 */	b ModuleProlog
/* 80BD697C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD6980  7C 08 03 A6 */	mtlr r0
/* 80BD6984  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6988  4E 80 00 20 */	blr 
