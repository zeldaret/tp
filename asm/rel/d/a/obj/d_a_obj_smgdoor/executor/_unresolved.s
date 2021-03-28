lbl_80CDBB18:
/* 80CDBB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDBB1C  7C 08 02 A6 */	mflr r0
/* 80CDBB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDBB24  4B 58 75 6C */	b ModuleUnresolved
/* 80CDBB28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDBB2C  7C 08 03 A6 */	mtlr r0
/* 80CDBB30  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDBB34  4E 80 00 20 */	blr 
