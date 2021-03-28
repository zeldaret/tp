lbl_80BE226C:
/* 80BE226C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE2270  7C 08 02 A6 */	mflr r0
/* 80BE2274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE2278  4B 68 0E 14 */	b ModuleEpilog
/* 80BE227C  3C 60 80 BE */	lis r3, data_80BE2F94@ha
/* 80BE2280  38 63 2F 94 */	addi r3, r3, data_80BE2F94@l
/* 80BE2284  4B 68 0F 0C */	b ModuleDestructorsX
/* 80BE2288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE228C  7C 08 03 A6 */	mtlr r0
/* 80BE2290  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE2294  4E 80 00 20 */	blr 
