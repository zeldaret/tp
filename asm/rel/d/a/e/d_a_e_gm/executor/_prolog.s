lbl_806D1180:
/* 806D1180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D1184  7C 08 02 A6 */	mflr r0
/* 806D1188  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D118C  3C 60 80 6D */	lis r3, data_806D798C@ha
/* 806D1190  38 63 79 8C */	addi r3, r3, data_806D798C@l
/* 806D1194  4B B9 1F B8 */	b ModuleConstructorsX
/* 806D1198  4B B9 1E F0 */	b ModuleProlog
/* 806D119C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D11A0  7C 08 03 A6 */	mtlr r0
/* 806D11A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806D11A8  4E 80 00 20 */	blr 
