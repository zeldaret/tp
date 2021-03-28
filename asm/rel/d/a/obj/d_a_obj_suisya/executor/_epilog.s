lbl_80CF002C:
/* 80CF002C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF0030  7C 08 02 A6 */	mflr r0
/* 80CF0034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF0038  4B 57 30 54 */	b ModuleEpilog
/* 80CF003C  3C 60 80 CF */	lis r3, data_80CF051C@ha
/* 80CF0040  38 63 05 1C */	addi r3, r3, data_80CF051C@l
/* 80CF0044  4B 57 31 4C */	b ModuleDestructorsX
/* 80CF0048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF004C  7C 08 03 A6 */	mtlr r0
/* 80CF0050  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF0054  4E 80 00 20 */	blr 
