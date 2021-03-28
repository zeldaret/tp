lbl_80BC7EEC:
/* 80BC7EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7EF0  7C 08 02 A6 */	mflr r0
/* 80BC7EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7EF8  4B 69 B1 94 */	b ModuleEpilog
/* 80BC7EFC  3C 60 80 BD */	lis r3, data_80BC8CD8@ha
/* 80BC7F00  38 63 8C D8 */	addi r3, r3, data_80BC8CD8@l
/* 80BC7F04  4B 69 B2 8C */	b ModuleDestructorsX
/* 80BC7F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7F0C  7C 08 03 A6 */	mtlr r0
/* 80BC7F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7F14  4E 80 00 20 */	blr 
