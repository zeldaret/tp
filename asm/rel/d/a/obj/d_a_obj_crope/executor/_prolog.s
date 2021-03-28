lbl_80BCCC60:
/* 80BCCC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCCC64  7C 08 02 A6 */	mflr r0
/* 80BCCC68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCCC6C  3C 60 80 BD */	lis r3, data_80BCEAC4@ha
/* 80BCCC70  38 63 EA C4 */	addi r3, r3, data_80BCEAC4@l
/* 80BCCC74  4B 69 64 D8 */	b ModuleConstructorsX
/* 80BCCC78  4B 69 64 10 */	b ModuleProlog
/* 80BCCC7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCCC80  7C 08 03 A6 */	mtlr r0
/* 80BCCC84  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCCC88  4E 80 00 20 */	blr 
