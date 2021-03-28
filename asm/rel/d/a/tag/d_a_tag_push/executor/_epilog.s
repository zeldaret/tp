lbl_8049026C:
/* 8049026C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80490270  7C 08 02 A6 */	mflr r0
/* 80490274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80490278  4B DD 2E 14 */	b ModuleEpilog
/* 8049027C  3C 60 80 49 */	lis r3, data_80490948@ha
/* 80490280  38 63 09 48 */	addi r3, r3, data_80490948@l
/* 80490284  4B DD 2F 0C */	b ModuleDestructorsX
/* 80490288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049028C  7C 08 03 A6 */	mtlr r0
/* 80490290  38 21 00 10 */	addi r1, r1, 0x10
/* 80490294  4E 80 00 20 */	blr 
