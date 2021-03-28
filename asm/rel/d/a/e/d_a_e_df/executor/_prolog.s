lbl_806A7600:
/* 806A7600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A7604  7C 08 02 A6 */	mflr r0
/* 806A7608  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A760C  3C 60 80 6B */	lis r3, data_806A9F1C@ha
/* 806A7610  38 63 9F 1C */	addi r3, r3, data_806A9F1C@l
/* 806A7614  4B BB BB 38 */	b ModuleConstructorsX
/* 806A7618  4B BB BA 70 */	b ModuleProlog
/* 806A761C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A7620  7C 08 03 A6 */	mtlr r0
/* 806A7624  38 21 00 10 */	addi r1, r1, 0x10
/* 806A7628  4E 80 00 20 */	blr 
