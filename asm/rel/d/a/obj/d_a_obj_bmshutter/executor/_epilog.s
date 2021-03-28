lbl_80BB9A0C:
/* 80BB9A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB9A10  7C 08 02 A6 */	mflr r0
/* 80BB9A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB9A18  4B 6A 96 74 */	b ModuleEpilog
/* 80BB9A1C  3C 60 80 BC */	lis r3, data_80BBA7AC@ha
/* 80BB9A20  38 63 A7 AC */	addi r3, r3, data_80BBA7AC@l
/* 80BB9A24  4B 6A 97 6C */	b ModuleDestructorsX
/* 80BB9A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB9A2C  7C 08 03 A6 */	mtlr r0
/* 80BB9A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB9A34  4E 80 00 20 */	blr 
