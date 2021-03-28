lbl_80D4F5EC:
/* 80D4F5EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F5F0  7C 08 02 A6 */	mflr r0
/* 80D4F5F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F5F8  4B 51 3A 94 */	b ModuleEpilog
/* 80D4F5FC  3C 60 80 D5 */	lis r3, data_80D4F7C4@ha
/* 80D4F600  38 63 F7 C4 */	addi r3, r3, data_80D4F7C4@l
/* 80D4F604  4B 51 3B 8C */	b ModuleDestructorsX
/* 80D4F608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F60C  7C 08 03 A6 */	mtlr r0
/* 80D4F610  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F614  4E 80 00 20 */	blr 
