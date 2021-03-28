lbl_80BA90A0:
/* 80BA90A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA90A4  7C 08 02 A6 */	mflr r0
/* 80BA90A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA90AC  3C 60 80 BB */	lis r3, data_80BA9B5C@ha
/* 80BA90B0  38 63 9B 5C */	addi r3, r3, data_80BA9B5C@l
/* 80BA90B4  4B 6B A0 98 */	b ModuleConstructorsX
/* 80BA90B8  4B 6B 9F D0 */	b ModuleProlog
/* 80BA90BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA90C0  7C 08 03 A6 */	mtlr r0
/* 80BA90C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA90C8  4E 80 00 20 */	blr 
