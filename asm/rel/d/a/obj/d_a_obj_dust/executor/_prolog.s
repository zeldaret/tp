lbl_80BE2240:
/* 80BE2240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE2244  7C 08 02 A6 */	mflr r0
/* 80BE2248  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE224C  3C 60 80 BE */	lis r3, data_80BE2F90@ha
/* 80BE2250  38 63 2F 90 */	addi r3, r3, data_80BE2F90@l
/* 80BE2254  4B 68 0E F8 */	b ModuleConstructorsX
/* 80BE2258  4B 68 0E 30 */	b ModuleProlog
/* 80BE225C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE2260  7C 08 03 A6 */	mtlr r0
/* 80BE2264  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE2268  4E 80 00 20 */	blr 
