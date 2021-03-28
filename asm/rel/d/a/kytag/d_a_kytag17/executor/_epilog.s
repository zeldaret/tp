lbl_8046DB0C:
/* 8046DB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046DB10  7C 08 02 A6 */	mflr r0
/* 8046DB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046DB18  4B DF 55 74 */	b ModuleEpilog
/* 8046DB1C  3C 60 80 47 */	lis r3, data_8046DBE4@ha
/* 8046DB20  38 63 DB E4 */	addi r3, r3, data_8046DBE4@l
/* 8046DB24  4B DF 56 6C */	b ModuleDestructorsX
/* 8046DB28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046DB2C  7C 08 03 A6 */	mtlr r0
/* 8046DB30  38 21 00 10 */	addi r1, r1, 0x10
/* 8046DB34  4E 80 00 20 */	blr 
