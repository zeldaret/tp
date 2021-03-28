lbl_804BC1F8:
/* 804BC1F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BC1FC  7C 08 02 A6 */	mflr r0
/* 804BC200  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BC204  4B DA 6E 8C */	b ModuleUnresolved
/* 804BC208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BC20C  7C 08 03 A6 */	mtlr r0
/* 804BC210  38 21 00 10 */	addi r1, r1, 0x10
/* 804BC214  4E 80 00 20 */	blr 
