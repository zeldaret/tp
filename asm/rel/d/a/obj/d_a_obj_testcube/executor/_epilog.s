lbl_80D0BB0C:
/* 80D0BB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0BB10  7C 08 02 A6 */	mflr r0
/* 80D0BB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0BB18  4B 55 75 74 */	b ModuleEpilog
/* 80D0BB1C  3C 60 80 D1 */	lis r3, data_80D0BB5C@ha
/* 80D0BB20  38 63 BB 5C */	addi r3, r3, data_80D0BB5C@l
/* 80D0BB24  4B 55 76 6C */	b ModuleDestructorsX
/* 80D0BB28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0BB2C  7C 08 03 A6 */	mtlr r0
/* 80D0BB30  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0BB34  4E 80 00 20 */	blr 
