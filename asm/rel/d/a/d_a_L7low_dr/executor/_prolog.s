lbl_805AA580:
/* 805AA580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA584  7C 08 02 A6 */	mflr r0
/* 805AA588  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA58C  3C 60 80 5B */	lis r3, data_805AAF6C@ha
/* 805AA590  38 63 AF 6C */	addi r3, r3, data_805AAF6C@l
/* 805AA594  4B CB 8B B8 */	b ModuleConstructorsX
/* 805AA598  4B CB 8A F0 */	b ModuleProlog
/* 805AA59C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA5A0  7C 08 03 A6 */	mtlr r0
/* 805AA5A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA5A8  4E 80 00 20 */	blr 
