lbl_806F5960:
/* 806F5960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F5964  7C 08 02 A6 */	mflr r0
/* 806F5968  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F596C  3C 60 80 6F */	lis r3, data_806F7B58@ha
/* 806F5970  38 63 7B 58 */	addi r3, r3, data_806F7B58@l
/* 806F5974  4B B6 D7 D8 */	b ModuleConstructorsX
/* 806F5978  4B B6 D7 10 */	b ModuleProlog
/* 806F597C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F5980  7C 08 03 A6 */	mtlr r0
/* 806F5984  38 21 00 10 */	addi r1, r1, 0x10
/* 806F5988  4E 80 00 20 */	blr 
