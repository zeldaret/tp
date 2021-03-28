lbl_805A544C:
/* 805A544C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5450  7C 08 02 A6 */	mflr r0
/* 805A5454  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A5458  4B CB DC 34 */	b ModuleEpilog
/* 805A545C  3C 60 80 5A */	lis r3, data_805A55D0@ha
/* 805A5460  38 63 55 D0 */	addi r3, r3, data_805A55D0@l
/* 805A5464  4B CB DD 2C */	b ModuleDestructorsX
/* 805A5468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A546C  7C 08 03 A6 */	mtlr r0
/* 805A5470  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5474  4E 80 00 20 */	blr 
