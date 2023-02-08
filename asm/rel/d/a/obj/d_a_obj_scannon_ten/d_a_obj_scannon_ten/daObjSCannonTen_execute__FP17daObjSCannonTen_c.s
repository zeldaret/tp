lbl_80CCCA2C:
/* 80CCCA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCCA30  7C 08 02 A6 */	mflr r0
/* 80CCCA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCCA38  4B FF F1 35 */	bl execute__17daObjSCannonTen_cFv
/* 80CCCA3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCCA40  7C 08 03 A6 */	mtlr r0
/* 80CCCA44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCCA48  4E 80 00 20 */	blr 
