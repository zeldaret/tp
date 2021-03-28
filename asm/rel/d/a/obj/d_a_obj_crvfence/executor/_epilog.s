lbl_80BCEC4C:
/* 80BCEC4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCEC50  7C 08 02 A6 */	mflr r0
/* 80BCEC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCEC58  4B 69 44 34 */	b ModuleEpilog
/* 80BCEC5C  3C 60 80 BD */	lis r3, data_80BD0184@ha
/* 80BCEC60  38 63 01 84 */	addi r3, r3, data_80BD0184@l
/* 80BCEC64  4B 69 45 2C */	b ModuleDestructorsX
/* 80BCEC68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCEC6C  7C 08 03 A6 */	mtlr r0
/* 80BCEC70  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCEC74  4E 80 00 20 */	blr 
