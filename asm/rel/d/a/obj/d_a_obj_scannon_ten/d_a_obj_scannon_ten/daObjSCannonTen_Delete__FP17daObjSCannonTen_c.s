lbl_80CCCA0C:
/* 80CCCA0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCCA10  7C 08 02 A6 */	mflr r0
/* 80CCCA14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCCA18  4B FF EF C9 */	bl Delete__17daObjSCannonTen_cFv
/* 80CCCA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCCA20  7C 08 03 A6 */	mtlr r0
/* 80CCCA24  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCCA28  4E 80 00 20 */	blr 
