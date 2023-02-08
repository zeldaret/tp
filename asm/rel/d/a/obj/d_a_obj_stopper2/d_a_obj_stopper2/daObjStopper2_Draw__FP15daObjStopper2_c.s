lbl_80CEFDEC:
/* 80CEFDEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEFDF0  7C 08 02 A6 */	mflr r0
/* 80CEFDF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEFDF8  4B FF FF 49 */	bl draw__15daObjStopper2_cFv
/* 80CEFDFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEFE00  7C 08 03 A6 */	mtlr r0
/* 80CEFE04  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEFE08  4E 80 00 20 */	blr 
