lbl_80BA13E0:
/* 80BA13E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA13E4  7C 08 02 A6 */	mflr r0
/* 80BA13E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA13EC  3C 60 80 BA */	lis r3, data_80BA237C@ha
/* 80BA13F0  38 63 23 7C */	addi r3, r3, data_80BA237C@l
/* 80BA13F4  4B 6C 1D 58 */	b ModuleConstructorsX
/* 80BA13F8  4B 6C 1C 90 */	b ModuleProlog
/* 80BA13FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA1400  7C 08 03 A6 */	mtlr r0
/* 80BA1404  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1408  4E 80 00 20 */	blr 
