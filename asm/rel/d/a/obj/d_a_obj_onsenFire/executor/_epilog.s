lbl_80CA822C:
/* 80CA822C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8230  7C 08 02 A6 */	mflr r0
/* 80CA8234  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8238  4B 5B AE 54 */	b ModuleEpilog
/* 80CA823C  3C 60 80 CB */	lis r3, data_80CA8470@ha
/* 80CA8240  38 63 84 70 */	addi r3, r3, data_80CA8470@l
/* 80CA8244  4B 5B AF 4C */	b ModuleDestructorsX
/* 80CA8248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA824C  7C 08 03 A6 */	mtlr r0
/* 80CA8250  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8254  4E 80 00 20 */	blr 
