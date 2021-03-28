lbl_80D40480:
/* 80D40480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D40484  7C 08 02 A6 */	mflr r0
/* 80D40488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4048C  3C 60 80 D4 */	lis r3, data_80D41588@ha
/* 80D40490  38 63 15 88 */	addi r3, r3, data_80D41588@l
/* 80D40494  4B 52 2C B8 */	b ModuleConstructorsX
/* 80D40498  4B 52 2B F0 */	b ModuleProlog
/* 80D4049C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D404A0  7C 08 03 A6 */	mtlr r0
/* 80D404A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D404A8  4E 80 00 20 */	blr 
