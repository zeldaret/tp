lbl_8046B6CC:
/* 8046B6CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046B6D0  7C 08 02 A6 */	mflr r0
/* 8046B6D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046B6D8  4B DF 79 B4 */	b ModuleEpilog
/* 8046B6DC  3C 60 80 47 */	lis r3, data_8046C97C@ha
/* 8046B6E0  38 63 C9 7C */	addi r3, r3, data_8046C97C@l
/* 8046B6E4  4B DF 7A AC */	b ModuleDestructorsX
/* 8046B6E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046B6EC  7C 08 03 A6 */	mtlr r0
/* 8046B6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8046B6F4  4E 80 00 20 */	blr 
