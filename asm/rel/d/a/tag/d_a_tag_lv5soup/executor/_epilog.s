lbl_80D5AD0C:
/* 80D5AD0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5AD10  7C 08 02 A6 */	mflr r0
/* 80D5AD14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5AD18  4B 50 83 74 */	b ModuleEpilog
/* 80D5AD1C  3C 60 80 D6 */	lis r3, data_80D5B158@ha
/* 80D5AD20  38 63 B1 58 */	addi r3, r3, data_80D5B158@l
/* 80D5AD24  4B 50 84 6C */	b ModuleDestructorsX
/* 80D5AD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5AD2C  7C 08 03 A6 */	mtlr r0
/* 80D5AD30  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5AD34  4E 80 00 20 */	blr 
