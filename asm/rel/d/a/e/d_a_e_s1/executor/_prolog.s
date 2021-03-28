lbl_8077AAA0:
/* 8077AAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8077AAA4  7C 08 02 A6 */	mflr r0
/* 8077AAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077AAAC  3C 60 80 78 */	lis r3, data_80780DB0@ha
/* 8077AAB0  38 63 0D B0 */	addi r3, r3, data_80780DB0@l
/* 8077AAB4  4B AE 86 98 */	b ModuleConstructorsX
/* 8077AAB8  4B AE 85 D0 */	b ModuleProlog
/* 8077AABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8077AAC0  7C 08 03 A6 */	mtlr r0
/* 8077AAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8077AAC8  4E 80 00 20 */	blr 
