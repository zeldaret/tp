lbl_80CC0AE0:
/* 80CC0AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC0AE4  7C 08 02 A6 */	mflr r0
/* 80CC0AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC0AEC  3C 60 80 CC */	lis r3, data_80CC13F8@ha
/* 80CC0AF0  38 63 13 F8 */	addi r3, r3, data_80CC13F8@l
/* 80CC0AF4  4B 5A 26 58 */	b ModuleConstructorsX
/* 80CC0AF8  4B 5A 25 90 */	b ModuleProlog
/* 80CC0AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC0B00  7C 08 03 A6 */	mtlr r0
/* 80CC0B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC0B08  4E 80 00 20 */	blr 
