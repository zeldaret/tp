lbl_80D636FC:
/* 80D636FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63700  7C 08 02 A6 */	mflr r0
/* 80D63704  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63708  4B FF F7 C9 */	bl Draw__15daTag_SSDrink_cFv
/* 80D6370C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63710  7C 08 03 A6 */	mtlr r0
/* 80D63714  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63718  4E 80 00 20 */	blr 
