lbl_80D59638:
/* 80D59638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5963C  7C 08 02 A6 */	mflr r0
/* 80D59640  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59644  4B 50 9A 4C */	b ModuleUnresolved
/* 80D59648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5964C  7C 08 03 A6 */	mtlr r0
/* 80D59650  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59654  4E 80 00 20 */	blr 
