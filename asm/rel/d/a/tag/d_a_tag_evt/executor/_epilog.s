lbl_8048B8CC:
/* 8048B8CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B8D0  7C 08 02 A6 */	mflr r0
/* 8048B8D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B8D8  4B DD 77 B4 */	b ModuleEpilog
/* 8048B8DC  3C 60 80 49 */	lis r3, data_8048C394@ha
/* 8048B8E0  38 63 C3 94 */	addi r3, r3, data_8048C394@l
/* 8048B8E4  4B DD 78 AC */	b ModuleDestructorsX
/* 8048B8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B8EC  7C 08 03 A6 */	mtlr r0
/* 8048B8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B8F4  4E 80 00 20 */	blr 
