lbl_80C82CEC:
/* 80C82CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82CF0  7C 08 02 A6 */	mflr r0
/* 80C82CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82CF8  4B 5E 03 94 */	b ModuleEpilog
/* 80C82CFC  3C 60 80 C8 */	lis r3, data_80C8380C@ha
/* 80C82D00  38 63 38 0C */	addi r3, r3, data_80C8380C@l
/* 80C82D04  4B 5E 04 8C */	b ModuleDestructorsX
/* 80C82D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82D0C  7C 08 03 A6 */	mtlr r0
/* 80C82D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82D14  4E 80 00 20 */	blr 
