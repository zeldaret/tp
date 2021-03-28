lbl_80CE01D4:
/* 80CE01D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE01D8  7C 08 02 A6 */	mflr r0
/* 80CE01DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE01E0  4B FF F9 91 */	bl Delete__15daObjSnowSoup_cFv
/* 80CE01E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE01E8  7C 08 03 A6 */	mtlr r0
/* 80CE01EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE01F0  4E 80 00 20 */	blr 
