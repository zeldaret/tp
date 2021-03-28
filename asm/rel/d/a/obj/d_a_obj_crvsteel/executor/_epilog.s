lbl_80BD5B6C:
/* 80BD5B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD5B70  7C 08 02 A6 */	mflr r0
/* 80BD5B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5B78  4B 68 D5 14 */	b ModuleEpilog
/* 80BD5B7C  3C 60 80 BD */	lis r3, data_80BD6204@ha
/* 80BD5B80  38 63 62 04 */	addi r3, r3, data_80BD6204@l
/* 80BD5B84  4B 68 D6 0C */	b ModuleDestructorsX
/* 80BD5B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD5B8C  7C 08 03 A6 */	mtlr r0
/* 80BD5B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD5B94  4E 80 00 20 */	blr 
