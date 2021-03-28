lbl_8046DAE0:
/* 8046DAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046DAE4  7C 08 02 A6 */	mflr r0
/* 8046DAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046DAEC  3C 60 80 47 */	lis r3, data_8046DBE0@ha
/* 8046DAF0  38 63 DB E0 */	addi r3, r3, data_8046DBE0@l
/* 8046DAF4  4B DF 56 58 */	b ModuleConstructorsX
/* 8046DAF8  4B DF 55 90 */	b ModuleProlog
/* 8046DAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046DB00  7C 08 03 A6 */	mtlr r0
/* 8046DB04  38 21 00 10 */	addi r1, r1, 0x10
/* 8046DB08  4E 80 00 20 */	blr 
