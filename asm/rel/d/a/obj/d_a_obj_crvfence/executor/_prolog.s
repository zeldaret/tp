lbl_80BCEC20:
/* 80BCEC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCEC24  7C 08 02 A6 */	mflr r0
/* 80BCEC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCEC2C  3C 60 80 BD */	lis r3, data_80BD0180@ha
/* 80BCEC30  38 63 01 80 */	addi r3, r3, data_80BD0180@l
/* 80BCEC34  4B 69 45 18 */	b ModuleConstructorsX
/* 80BCEC38  4B 69 44 50 */	b ModuleProlog
/* 80BCEC3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCEC40  7C 08 03 A6 */	mtlr r0
/* 80BCEC44  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCEC48  4E 80 00 20 */	blr 
