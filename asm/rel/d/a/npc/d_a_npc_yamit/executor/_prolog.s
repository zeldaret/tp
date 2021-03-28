lbl_80B49B00:
/* 80B49B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B49B04  7C 08 02 A6 */	mflr r0
/* 80B49B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B49B0C  3C 60 80 B5 */	lis r3, data_80B4CD90@ha
/* 80B49B10  38 63 CD 90 */	addi r3, r3, data_80B4CD90@l
/* 80B49B14  4B 71 96 38 */	b ModuleConstructorsX
/* 80B49B18  4B 71 95 70 */	b ModuleProlog
/* 80B49B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B49B20  7C 08 03 A6 */	mtlr r0
/* 80B49B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80B49B28  4E 80 00 20 */	blr 
