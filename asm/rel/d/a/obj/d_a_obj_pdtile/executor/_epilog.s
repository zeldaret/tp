lbl_80CAAC6C:
/* 80CAAC6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAAC70  7C 08 02 A6 */	mflr r0
/* 80CAAC74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAAC78  4B 5B 84 14 */	b ModuleEpilog
/* 80CAAC7C  3C 60 80 CB */	lis r3, data_80CAC508@ha
/* 80CAAC80  38 63 C5 08 */	addi r3, r3, data_80CAC508@l
/* 80CAAC84  4B 5B 85 0C */	b ModuleDestructorsX
/* 80CAAC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAAC8C  7C 08 03 A6 */	mtlr r0
/* 80CAAC90  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAAC94  4E 80 00 20 */	blr 
