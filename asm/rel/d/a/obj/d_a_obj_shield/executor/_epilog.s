lbl_80CD6A0C:
/* 80CD6A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD6A10  7C 08 02 A6 */	mflr r0
/* 80CD6A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD6A18  4B 58 C6 74 */	b ModuleEpilog
/* 80CD6A1C  3C 60 80 CE */	lis r3, data_80CD8270@ha
/* 80CD6A20  38 63 82 70 */	addi r3, r3, data_80CD8270@l
/* 80CD6A24  4B 58 C7 6C */	b ModuleDestructorsX
/* 80CD6A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD6A2C  7C 08 03 A6 */	mtlr r0
/* 80CD6A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD6A34  4E 80 00 20 */	blr 
