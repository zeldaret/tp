lbl_80C9F340:
/* 80C9F340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9F344  7C 08 02 A6 */	mflr r0
/* 80C9F348  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9F34C  3C 60 80 CA */	lis r3, data_80CA0354@ha
/* 80C9F350  38 63 03 54 */	addi r3, r3, data_80CA0354@l
/* 80C9F354  4B 5C 3D F8 */	b ModuleConstructorsX
/* 80C9F358  4B 5C 3D 30 */	b ModuleProlog
/* 80C9F35C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9F360  7C 08 03 A6 */	mtlr r0
/* 80C9F364  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9F368  4E 80 00 20 */	blr 
