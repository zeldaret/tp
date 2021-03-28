lbl_80BACCEC:
/* 80BACCEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BACCF0  7C 08 02 A6 */	mflr r0
/* 80BACCF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BACCF8  4B 6B 63 94 */	b ModuleEpilog
/* 80BACCFC  3C 60 80 BB */	lis r3, data_80BAD470@ha
/* 80BACD00  38 63 D4 70 */	addi r3, r3, data_80BAD470@l
/* 80BACD04  4B 6B 64 8C */	b ModuleDestructorsX
/* 80BACD08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BACD0C  7C 08 03 A6 */	mtlr r0
/* 80BACD10  38 21 00 10 */	addi r1, r1, 0x10
/* 80BACD14  4E 80 00 20 */	blr 
