lbl_8048D90C:
/* 8048D90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D910  7C 08 02 A6 */	mflr r0
/* 8048D914  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D918  4B DD 57 74 */	b ModuleEpilog
/* 8048D91C  3C 60 80 49 */	lis r3, data_8048DD60@ha
/* 8048D920  38 63 DD 60 */	addi r3, r3, data_8048DD60@l
/* 8048D924  4B DD 58 6C */	b ModuleDestructorsX
/* 8048D928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D92C  7C 08 03 A6 */	mtlr r0
/* 8048D930  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D934  4E 80 00 20 */	blr 
