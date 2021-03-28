lbl_80CA7B0C:
/* 80CA7B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA7B10  7C 08 02 A6 */	mflr r0
/* 80CA7B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7B18  4B 5B B5 74 */	b ModuleEpilog
/* 80CA7B1C  3C 60 80 CB */	lis r3, data_80CA8118@ha
/* 80CA7B20  38 63 81 18 */	addi r3, r3, data_80CA8118@l
/* 80CA7B24  4B 5B B6 6C */	b ModuleDestructorsX
/* 80CA7B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA7B2C  7C 08 03 A6 */	mtlr r0
/* 80CA7B30  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA7B34  4E 80 00 20 */	blr 
