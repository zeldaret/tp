lbl_806A1DC0:
/* 806A1DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A1DC4  7C 08 02 A6 */	mflr r0
/* 806A1DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A1DCC  3C 60 80 6A */	lis r3, data_806A210C@ha
/* 806A1DD0  38 63 21 0C */	addi r3, r3, data_806A210C@l
/* 806A1DD4  4B BC 13 78 */	b ModuleConstructorsX
/* 806A1DD8  4B BC 12 B0 */	b ModuleProlog
/* 806A1DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A1DE0  7C 08 03 A6 */	mtlr r0
/* 806A1DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 806A1DE8  4E 80 00 20 */	blr 
