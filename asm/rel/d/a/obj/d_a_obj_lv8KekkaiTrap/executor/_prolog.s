lbl_80C87BC0:
/* 80C87BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C87BC4  7C 08 02 A6 */	mflr r0
/* 80C87BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C87BCC  3C 60 80 C9 */	lis r3, data_80C884D0@ha
/* 80C87BD0  38 63 84 D0 */	addi r3, r3, data_80C884D0@l
/* 80C87BD4  4B 5D B5 78 */	b ModuleConstructorsX
/* 80C87BD8  4B 5D B4 B0 */	b ModuleProlog
/* 80C87BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C87BE0  7C 08 03 A6 */	mtlr r0
/* 80C87BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C87BE8  4E 80 00 20 */	blr 
