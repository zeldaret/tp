lbl_80BC27F8:
/* 80BC27F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC27FC  7C 08 02 A6 */	mflr r0
/* 80BC2800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC2804  4B 6A 08 8C */	b ModuleUnresolved
/* 80BC2808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC280C  7C 08 03 A6 */	mtlr r0
/* 80BC2810  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC2814  4E 80 00 20 */	blr 
