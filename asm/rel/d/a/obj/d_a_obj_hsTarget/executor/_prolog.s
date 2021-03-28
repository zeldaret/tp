lbl_80C1F340:
/* 80C1F340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F344  7C 08 02 A6 */	mflr r0
/* 80C1F348  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F34C  3C 60 80 C2 */	lis r3, data_80C1F88C@ha
/* 80C1F350  38 63 F8 8C */	addi r3, r3, data_80C1F88C@l
/* 80C1F354  4B 64 3D F8 */	b ModuleConstructorsX
/* 80C1F358  4B 64 3D 30 */	b ModuleProlog
/* 80C1F35C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F360  7C 08 03 A6 */	mtlr r0
/* 80C1F364  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F368  4E 80 00 20 */	blr 
