lbl_80D21AF8:
/* 80D21AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21AFC  7C 08 02 A6 */	mflr r0
/* 80D21B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21B04  4B 54 15 8C */	b ModuleUnresolved
/* 80D21B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D21B0C  7C 08 03 A6 */	mtlr r0
/* 80D21B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D21B14  4E 80 00 20 */	blr 
