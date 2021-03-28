lbl_80599FF8:
/* 80599FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599FFC  7C 08 02 A6 */	mflr r0
/* 8059A000  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A004  4B CC 90 8C */	b ModuleUnresolved
/* 8059A008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A00C  7C 08 03 A6 */	mtlr r0
/* 8059A010  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A014  4E 80 00 20 */	blr 
