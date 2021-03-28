lbl_80AD8178:
/* 80AD8178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD817C  7C 08 02 A6 */	mflr r0
/* 80AD8180  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD8184  4B 78 AF 0C */	b ModuleUnresolved
/* 80AD8188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD818C  7C 08 03 A6 */	mtlr r0
/* 80AD8190  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD8194  4E 80 00 20 */	blr 
