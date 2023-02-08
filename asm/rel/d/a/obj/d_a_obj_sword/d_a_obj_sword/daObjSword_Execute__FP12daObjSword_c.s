lbl_80CFDDC4:
/* 80CFDDC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFDDC8  7C 08 02 A6 */	mflr r0
/* 80CFDDCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFDDD0  4B FF FE 4D */	bl execute__12daObjSword_cFv
/* 80CFDDD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFDDD8  7C 08 03 A6 */	mtlr r0
/* 80CFDDDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFDDE0  4E 80 00 20 */	blr 
