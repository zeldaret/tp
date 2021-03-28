lbl_80CD976C:
/* 80CD976C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD9770  7C 08 02 A6 */	mflr r0
/* 80CD9774  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD9778  4B 58 99 14 */	b ModuleEpilog
/* 80CD977C  3C 60 80 CE */	lis r3, data_80CDB7F0@ha
/* 80CD9780  38 63 B7 F0 */	addi r3, r3, data_80CDB7F0@l
/* 80CD9784  4B 58 9A 0C */	b ModuleDestructorsX
/* 80CD9788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD978C  7C 08 03 A6 */	mtlr r0
/* 80CD9790  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD9794  4E 80 00 20 */	blr 
