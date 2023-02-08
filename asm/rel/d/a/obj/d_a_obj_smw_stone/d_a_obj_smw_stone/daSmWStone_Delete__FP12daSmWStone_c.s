lbl_80CDEE7C:
/* 80CDEE7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDEE80  7C 08 02 A6 */	mflr r0
/* 80CDEE84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDEE88  4B FF FB A5 */	bl Delete__12daSmWStone_cFv
/* 80CDEE8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDEE90  7C 08 03 A6 */	mtlr r0
/* 80CDEE94  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDEE98  4E 80 00 20 */	blr 
