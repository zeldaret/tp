lbl_80490A0C:
/* 80490A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80490A10  7C 08 02 A6 */	mflr r0
/* 80490A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80490A18  4B DD 26 74 */	b ModuleEpilog
/* 80490A1C  3C 60 80 49 */	lis r3, data_80490BE4@ha
/* 80490A20  38 63 0B E4 */	addi r3, r3, data_80490BE4@l
/* 80490A24  4B DD 27 6C */	b ModuleDestructorsX
/* 80490A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80490A2C  7C 08 03 A6 */	mtlr r0
/* 80490A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80490A34  4E 80 00 20 */	blr 
