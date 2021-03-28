lbl_8083550C:
/* 8083550C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80835510  7C 08 02 A6 */	mflr r0
/* 80835514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80835518  4B A2 DB 74 */	b ModuleEpilog
/* 8083551C  3C 60 80 83 */	lis r3, data_808378A4@ha
/* 80835520  38 63 78 A4 */	addi r3, r3, data_808378A4@l
/* 80835524  4B A2 DC 6C */	b ModuleDestructorsX
/* 80835528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8083552C  7C 08 03 A6 */	mtlr r0
/* 80835530  38 21 00 10 */	addi r1, r1, 0x10
/* 80835534  4E 80 00 20 */	blr 
