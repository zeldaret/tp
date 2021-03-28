lbl_80C5FB00:
/* 80C5FB00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5FB04  7C 08 02 A6 */	mflr r0
/* 80C5FB08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5FB0C  3C 60 80 C6 */	lis r3, data_80C607F0@ha
/* 80C5FB10  38 63 07 F0 */	addi r3, r3, data_80C607F0@l
/* 80C5FB14  4B 60 36 38 */	b ModuleConstructorsX
/* 80C5FB18  4B 60 35 70 */	b ModuleProlog
/* 80C5FB1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5FB20  7C 08 03 A6 */	mtlr r0
/* 80C5FB24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5FB28  4E 80 00 20 */	blr 
