lbl_804969F8:
/* 804969F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804969FC  7C 08 02 A6 */	mflr r0
/* 80496A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80496A04  4B DC C6 8C */	b ModuleUnresolved
/* 80496A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496A0C  7C 08 03 A6 */	mtlr r0
/* 80496A10  38 21 00 10 */	addi r1, r1, 0x10
/* 80496A14  4E 80 00 20 */	blr 
