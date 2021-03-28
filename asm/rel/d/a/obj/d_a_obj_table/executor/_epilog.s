lbl_80D063EC:
/* 80D063EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D063F0  7C 08 02 A6 */	mflr r0
/* 80D063F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D063F8  4B 55 CC 94 */	b ModuleEpilog
/* 80D063FC  3C 60 80 D0 */	lis r3, data_80D06C00@ha
/* 80D06400  38 63 6C 00 */	addi r3, r3, data_80D06C00@l
/* 80D06404  4B 55 CD 8C */	b ModuleDestructorsX
/* 80D06408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0640C  7C 08 03 A6 */	mtlr r0
/* 80D06410  38 21 00 10 */	addi r1, r1, 0x10
/* 80D06414  4E 80 00 20 */	blr 
