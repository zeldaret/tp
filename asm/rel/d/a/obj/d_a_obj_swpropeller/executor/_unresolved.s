lbl_8059A4F8:
/* 8059A4F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A4FC  7C 08 02 A6 */	mflr r0
/* 8059A500  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A504  4B CC 8B 8C */	b ModuleUnresolved
/* 8059A508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A50C  7C 08 03 A6 */	mtlr r0
/* 8059A510  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A514  4E 80 00 20 */	blr 
